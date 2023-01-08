import 'dart:async';

import 'package:altra_tube/providers/AudioProvider/notifiers/play_button_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/notifiers/progress_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/notifiers/repeat_button_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/service_locator.dart';
import 'package:altra_tube/providers/dashboard/dashboardProvider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../models/DurationState.dart';
import 'package:flutter/foundation.dart';

// late AudioHandler audioHandler;

class AudioProvider extends ChangeNotifier {
  final playList = ConcatenatingAudioSource(children: []);
  late SongModel song;
  // bool isAudioPlaying = false;
  bool bottomSheetOpen = false;
  late Timer timer;

  AudioPlayer audioPlayer = AudioPlayer();
  Stream<DurationState>? durationState;
  final audioHandler = getIt<AudioHandler>();

  initPlayer(BuildContext context) async {
    ///
    // audioHandler = await initAudioService();
    var dsp = Provider.of<DashboardProvider>(context, listen: false);
    // playList.a = dsp.deviceSongs
    final mediaItems = dsp.deviceSongs
        .map((song) => MediaItem(
              // id: song['id'] ?? '',
              // album: song['album'] ?? '',
              // title: song['title'] ?? '',
              // extras: {'url': song['url']},
              id: song.id.toString() ?? '',
              album: song.album ?? '',
              title: song.title ?? '',
              extras: {'url': song.uri},
            ))
        .toList();
    audioHandler.addQueueItems(mediaItems);
    init();

    ///
    durationState = Rx.combineLatest2<Duration, PlaybackEvent, DurationState>(
        audioPlayer.positionStream,
        audioPlayer.playbackEventStream,
        (position, playbackEvent) => DurationState(
              progress: position,
              buffered: playbackEvent.bufferedPosition,
              total: playbackEvent.duration,
            ));
    // audioPlayer.setAsset('assets/► Imagine Dragons - Believer (with lyrics)(MP3_128K).mp3');
    await audioPlayer.setLoopMode(LoopMode.all);
    // await loadEmptyPlaylist();
  }

  Future<void> loadEmptyPlaylist(AudioSource s) async {
    try {
      await audioPlayer.setAudioSource(s);
    } catch (e) {
      print("Error: $e");
    }
  }

  setPlayList(SongModel song) {
    if (audioPlayer.playing) {
      audioPlayer.pause();
    }

    playList.add(AudioSource.file(
      song.data,
      tag: MediaItem(id: song.data, title: song.title),
    ));
    // playList = list;
    debugPrint('Now playlist length is ${playList.length}');
    notifyListeners();
  }

  addToPlayList(dynamic music) {
    playList.add(music);
    notifyListeners();
  }

  // play() async {
  //   await audioPlayer.play();
  // }
  //
  // pause() async {
  //   await audioPlayer.pause();
  // }
  //
  // next() async {
  //   await audioPlayer.seekToNext();
  // }
  //
  // previous() async {
  //   await audioPlayer.seekToPrevious();
  // }
  //
  // disposePlayer() async {
  //   await audioPlayer.dispose();
  // }
  //
  audioTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      notifyListeners();
    });
  }

  // Listeners: Updates going to the UI
  final currentSongTitleNotifier = ValueNotifier<String>('');
  final playlistNotifier = ValueNotifier<List<String>>([]);
  final progressNotifier = ProgressNotifier();
  final repeatButtonNotifier = RepeatButtonNotifier();
  final isFirstSongNotifier = ValueNotifier<bool>(true);
  final playButtonNotifier = PlayButtonNotifier();
  final isLastSongNotifier = ValueNotifier<bool>(true);
  final isShuffleModeEnabledNotifier = ValueNotifier<bool>(false);

  // Events: Calls coming from the UI
  void init() async {
    // await _loadPlaylist();
    _listenToChangesInPlaylist();
    _listenToPlaybackState();
    _listenToCurrentPosition();
    _listenToBufferedPosition();
    _listenToTotalDuration();
    _listenToChangesInSong();
  }

  void _listenToChangesInPlaylist() {
    audioHandler.queue.listen((playlist) {
      if (playlist.isEmpty) {
        playlistNotifier.value = [];
        currentSongTitleNotifier.value = '';
      } else {
        final newList = playlist.map((item) => item.title).toList();
        playlistNotifier.value = newList;
      }
      _updateSkipButtons();
    });
  }

  void _listenToPlaybackState() {
    audioHandler.playbackState.listen((playbackState) {
      final isPlaying = playbackState.playing;
      final processingState = playbackState.processingState;
      if (processingState == AudioProcessingState.loading ||
          processingState == AudioProcessingState.buffering) {
        playButtonNotifier.value = ButtonState.loading;
      } else if (!isPlaying) {
        playButtonNotifier.value = ButtonState.paused;
      } else if (processingState != AudioProcessingState.completed) {
        playButtonNotifier.value = ButtonState.playing;
      } else {
        audioHandler.seek(Duration.zero);
        audioHandler.pause();
      }
    });
  }

  void _listenToCurrentPosition() {
    AudioService.position.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });
  }

  void _listenToBufferedPosition() {
    audioHandler.playbackState.listen((playbackState) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: playbackState.bufferedPosition,
        total: oldState.total,
      );
    });
  }

  void _listenToTotalDuration() {
    audioHandler.mediaItem.listen((mediaItem) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: mediaItem?.duration ?? Duration.zero,
      );
    });
  }

  void _listenToChangesInSong() {
    audioHandler.mediaItem.listen((mediaItem) {
      currentSongTitleNotifier.value = mediaItem?.title ?? '';
      _updateSkipButtons();
    });
  }

  void _updateSkipButtons() {
    final mediaItem = audioHandler.mediaItem.value;
    final playlist = audioHandler.queue.value;
    if (playlist.length < 2 || mediaItem == null) {
      isFirstSongNotifier.value = true;
      isLastSongNotifier.value = true;
    } else {
      isFirstSongNotifier.value = playlist.first == mediaItem;
      isLastSongNotifier.value = playlist.last == mediaItem;
    }
  }

  void play() => audioHandler.play();
  void pause() => audioHandler.pause();

  void seek(Duration position) => audioHandler.seek(position);

  void previous() => audioHandler.skipToPrevious();
  void next() => audioHandler.skipToNext();

  void repeat() {
    repeatButtonNotifier.nextState();
    final repeatMode = repeatButtonNotifier.value;
    switch (repeatMode) {
      case RepeatState.off:
        audioHandler.setRepeatMode(AudioServiceRepeatMode.none);
        break;
      case RepeatState.repeatSong:
        audioHandler.setRepeatMode(AudioServiceRepeatMode.one);
        break;
      case RepeatState.repeatPlaylist:
        audioHandler.setRepeatMode(AudioServiceRepeatMode.all);
        break;
    }
  }

  void shuffle() {
    final enable = !isShuffleModeEnabledNotifier.value;
    isShuffleModeEnabledNotifier.value = enable;
    if (enable) {
      audioHandler.setShuffleMode(AudioServiceShuffleMode.all);
    } else {
      audioHandler.setShuffleMode(AudioServiceShuffleMode.none);
    }
  }

  void dispose() {
    audioHandler.customAction('dispose');
  }

  void stop() {
    audioHandler.stop();
  }
}
