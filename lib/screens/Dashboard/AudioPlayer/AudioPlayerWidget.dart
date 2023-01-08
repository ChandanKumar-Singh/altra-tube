// import 'package:altra_tube/providers/AudioProvider/AudioProvider.dart';
// import 'package:altra_tube/widgets/constWidgets.dart';
// import 'package:flutter/material.dart';
// import 'package:on_audio_query/on_audio_query.dart';
// import 'package:photo_manager/photo_manager.dart';
// import 'package:provider/provider.dart';
//
// class AudioPlayerWidget extends StatefulWidget {
//   const AudioPlayerWidget({Key? key, required this.song}) : super(key: key);
//   final SongModel song;
//
//   @override
//   State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
// }
//
// class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     var ap = Provider.of<AudioProvider>(context, listen: false);
//     ap.initPlayer();
//   }
//
//   // @override
//   // void dispose() {
//   //   // TODO: implement initState
//   //   super.dispose();
//   //   var ap = Provider.of<AudioProvider>(context, listen: false);
//   //   ap.disposePlayer();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AudioProvider>(builder: (context, ap, _) {
//       return Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: h6Text(
//                       widget.song.title,
//                       fontWeight: FontWeight.bold,
//                       maxLine: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ],
//               ),
//               cusHeight10(),
//               const SizedBox(
//                 height: 200,
//               ),
//               Expanded(
//                 child: Column(
//                   children: [
//                     h6Text(
//                       ap.audioPlayer.playing ? 'Playing...' : 'Play',
//                       fontWeight: FontWeight.bold,
//                     ),
//                     StreamBuilder<DurationState>(
//                       stream: _durationState,
//                       builder: (context, snapshot) {
//                         final durationState = snapshot.data;
//                         final progress =
//                             durationState?.progress ?? Duration.zero;
//                         final buffered =
//                             durationState?.buffered ?? Duration.zero;
//                         final total = durationState?.total ?? Duration.zero;
//                         return ProgressBar(
//                           progress: progress,
//                           buffered: buffered,
//                           total: total,
//                           progressBarColor: Colors.red,
//                           baseBarColor: Colors.white.withOpacity(0.24),
//                           bufferedBarColor: Colors.white.withOpacity(0.24),
//                           thumbColor: Colors.white,
//                           barHeight: 3.0,
//                           thumbRadius: 5.0,
//                           onSeek: (duration) {
//                             _player.seek(duration);
//                           },
//                         );
//                       },
//                     ),
//                     IconButton(
//                       onPressed: () async {
//                         ap.audioPlayer.playing ? ap.pause() : ap.play();
//                         setState(() {});
//                       },
//                       icon: Icon(
//                         ap.audioPlayer.playing ? Icons.pause : Icons.play_arrow,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
//
// class DurationState {
//   const DurationState(
//       {required this.progress, required this.buffered, required this.total});
//   final Duration progress;
//   final Duration buffered;
//   final Duration total;
// }

import 'package:altra_tube/providers/AudioProvider/MyAudioHandler.dart';
import 'package:altra_tube/providers/AudioProvider/notifiers/play_button_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/notifiers/progress_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/notifiers/repeat_button_notifier.dart';
import 'package:altra_tube/providers/AudioProvider/AudioProvider.dart';
import 'package:altra_tube/utils/constants.dart';
import 'package:altra_tube/widgets/constWidgets.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:audio_video_progress_bar_example/audio_player_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:provider/provider.dart';

import '../../../models/DurationState.dart';

/// The basic usage for setting the progress bar state is like this:
///
/// ```
/// return ProgressBar(
///   progress: currentProgress,
///   buffered: currentBuffered,
///   total: totalDuration,
/// );
/// ```
///
/// This example contains some extra code to ensure that the ProgressBar works
/// under various situations. Do a search for "ProgressBar" to find it below.

//
///TODO:

var themeNotifier = ValueNotifier<ThemeVariation>(
  const ThemeVariation(Colors.blue, Brightness.light),
);

class ThemeVariation {
  const ThemeVariation(this.color, this.brightness);
  final MaterialColor color;
  final Brightness brightness;
}

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    Key? key,
    this.song,
  }) : super(key: key);
  final SongModel? song;

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  var _isShowingWidgetOutline = false;
  var _labelLocation = TimeLabelLocation.below;
  var _labelType = TimeLabelType.totalTime;
  TextStyle? _labelStyle;
  var _thumbRadius = 10.0;
  var _labelPadding = 0.0;
  var _barHeight = 5.0;
  var _barCapShape = BarCapShape.round;
  Color? _baseBarColor;
  Color? _progressBarColor;
  Color? _bufferedBarColor;
  Color? _thumbColor;
  Color? _thumbGlowColor;
  var _thumbCanPaintOutsideBar = true;

  @override
  void initState() {
    super.initState();
    var ap = Provider.of<AudioProvider>(context, listen: false);
    if (widget.song != null) {
      ap.playList.clear();
      ap.setPlayList(widget.song!);
    }
    ap.initPlayer(context);
    ap.play();
    setState(() {});
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   var ap = Provider.of<AudioProvider>(context, listen: false);
  //   ap.bottomSheetOpen = false;
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioProvider>(builder: (context, ap, _) {
      print(ap.audioHandler.mediaItem.value);
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Expanded(
                //   child: ListView(
                //     children: [
                //       _themeButtons(),
                //       _widgetSizeButtons(),
                //       const SizedBox(height: 20),
                //       const Text(
                //         '------- Labels -------',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       _labelLocationButtons(),
                //       _labelTypeButtons(),
                //       _labelSizeButtons(),
                //       _paddingSizeButtons(),
                //       const SizedBox(height: 20),
                //       const Text(
                //         '------- Bar -------',
                //         style: TextStyle(fontSize: 20),
                //       ),
                //       // _barColorButtons(),
                //       // _barCapShapeButtons(),
                //       // _barHeightButtons(),
                //       // _thumbSizeButtons(),
                //       // _thumbOutsideBarButtons(),
                //     ],
                //   ),
                // ),

                const Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: h6Text(ap.audioHandler.mediaItem.value != null
                              ? ap.audioHandler.mediaItem.value!.title
                              : '')),
                    ],
                  ),
                ),
                const AudioProgressBar(),
                const AudioControlButtons(),
                // const SizedBox(height: 20),
                // Container(
                //   decoration: _widgetBorder(),
                //   child: _progressBar(ap),
                // ),
                // const SizedBox(height: 20),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     _previousButton(ap),
                //     _playButton(ap),
                //     _nextButton(ap),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      );
    });
  }

  /*
  Wrap _themeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('light'),
        onPressed: () {
          themeNotifier.value =
              const ThemeVariation(Colors.blue, Brightness.light);
        },
      ),
      OutlinedButton(
        child: const Text('dark'),
        onPressed: () {
          themeNotifier.value =
              const ThemeVariation(Colors.blue, Brightness.dark);
        },
      ),
    ]);
  }

  Wrap _widgetSizeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('hide widget size'),
        onPressed: () {
          setState(() => _isShowingWidgetOutline = false);
        },
      ),
      OutlinedButton(
        child: const Text('show'),
        onPressed: () {
          setState(() => _isShowingWidgetOutline = true);
        },
      ),
    ]);
  }

  BoxDecoration _widgetBorder() {
    return BoxDecoration(
      border: _isShowingWidgetOutline
          ? Border.all(color: Colors.red)
          : Border.all(color: Colors.transparent),
    );
  }

  Wrap _labelLocationButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('below'),
        onPressed: () {
          setState(() => _labelLocation = TimeLabelLocation.below);
        },
      ),
      OutlinedButton(
        child: const Text('above'),
        onPressed: () {
          setState(() => _labelLocation = TimeLabelLocation.above);
        },
      ),
      OutlinedButton(
        child: const Text('sides'),
        onPressed: () {
          setState(() => _labelLocation = TimeLabelLocation.sides);
        },
      ),
      OutlinedButton(
        child: const Text('none'),
        onPressed: () {
          setState(() => _labelLocation = TimeLabelLocation.none);
        },
      ),
    ]);
  }

  Wrap _labelTypeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('total time'),
        onPressed: () {
          setState(() => _labelType = TimeLabelType.totalTime);
        },
      ),
      OutlinedButton(
        child: const Text('remaining time'),
        onPressed: () {
          setState(() => _labelType = TimeLabelType.remainingTime);
        },
      ),
    ]);
  }

  Wrap _labelSizeButtons() {
    final fontColor = Theme.of(context).textTheme.bodyText1?.color;
    return Wrap(children: [
      OutlinedButton(
        child: const Text('standard font size'),
        onPressed: () {
          setState(() => _labelStyle = null);
        },
      ),
      OutlinedButton(
        child: const Text('large'),
        onPressed: () {
          setState(
              () => _labelStyle = TextStyle(fontSize: 40, color: fontColor));
        },
      ),
      OutlinedButton(
        child: const Text('small'),
        onPressed: () {
          setState(
              () => _labelStyle = TextStyle(fontSize: 8, color: fontColor));
        },
      ),
    ]);
  }

  Wrap _thumbSizeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('standard thumb radius'),
        onPressed: () {
          setState(() => _thumbRadius = 10);
        },
      ),
      OutlinedButton(
        child: const Text('large'),
        onPressed: () {
          setState(() => _thumbRadius = 20);
        },
      ),
      OutlinedButton(
        child: const Text('small'),
        onPressed: () {
          setState(() => _thumbRadius = 5);
        },
      ),
    ]);
  }

  Wrap _paddingSizeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('standard padding'),
        onPressed: () {
          setState(() => _labelPadding = 0.0);
        },
      ),
      OutlinedButton(
        child: const Text('10 padding'),
        onPressed: () {
          setState(() => _labelPadding = 10);
        },
      ),
      OutlinedButton(
        child: const Text('-5 padding'),
        onPressed: () {
          setState(() => _labelPadding = -5);
        },
      ),
    ]);
  }

  Wrap _barHeightButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('standard bar height'),
        onPressed: () {
          setState(() => _barHeight = 5.0);
        },
      ),
      OutlinedButton(
        child: const Text('thin'),
        onPressed: () {
          setState(() => _barHeight = 1.0);
        },
      ),
      OutlinedButton(
        child: const Text('thick'),
        onPressed: () {
          setState(() => _barHeight = 20.0);
        },
      ),
    ]);
  }

  Wrap _barCapShapeButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('round caps'),
        onPressed: () {
          setState(() => _barCapShape = BarCapShape.round);
        },
      ),
      OutlinedButton(
        child: const Text('square'),
        onPressed: () {
          setState(() => _barCapShape = BarCapShape.square);
        },
      ),
    ]);
  }

  Wrap _barColorButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('theme colors'),
        onPressed: () {
          setState(() {
            _baseBarColor = null;
            _progressBarColor = null;
            _bufferedBarColor = null;
            _thumbColor = null;
            _thumbGlowColor = null;
          });
        },
      ),
      OutlinedButton(
        child: const Text('custom'),
        onPressed: () {
          setState(() {
            _baseBarColor = Colors.grey.withOpacity(0.2);
            _progressBarColor = Colors.green;
            _bufferedBarColor = Colors.grey.withOpacity(0.2);
            _thumbColor = Colors.purple;
            _thumbGlowColor = Colors.green.withOpacity(0.3);
          });
        },
      ),
    ]);
  }

  Wrap _thumbOutsideBarButtons() {
    return Wrap(children: [
      OutlinedButton(
        child: const Text('thumb can paint outside bar'),
        onPressed: () {
          setState(() => _thumbCanPaintOutsideBar = true);
        },
      ),
      OutlinedButton(
        child: const Text('false'),
        onPressed: () {
          setState(() => _thumbCanPaintOutsideBar = false);
        },
      ),
    ]);
  }

  StreamBuilder<DurationState> _progressBar(AudioProvider ap) {
    return StreamBuilder<DurationState>(
      stream: ap.durationState,
      builder: (context, snapshot) {
        final durationState = snapshot.data;
        final progress = durationState?.progress ?? Duration.zero;
        final buffered = durationState?.buffered ?? Duration.zero;
        final total = durationState?.total ?? Duration.zero;
        return ProgressBar(
          progress: progress,
          buffered: buffered,
          total: total,
          onSeek: ap.audioPlayer.seek,
          onDragUpdate: (details) {
            debugPrint('${details.timeStamp}, ${details.localPosition}');
          },
          barHeight: _barHeight,
          // baseBarColor: _baseBarColor,
          progressBarColor: Colors.red,
          bufferedBarColor: _bufferedBarColor,
          thumbColor: Colors.red,
          // thumbGlowColor: _thumbGlowColor,
          barCapShape: _barCapShape,
          thumbRadius: _thumbRadius,
          thumbCanPaintOutsideBar: _thumbCanPaintOutsideBar,
          timeLabelLocation: _labelLocation,
          timeLabelType: _labelType,
          timeLabelTextStyle: _labelStyle,
          timeLabelPadding: _labelPadding,
        );
      },
    );
  }

  StreamBuilder<PlayerState> _playButton(AudioProvider ap) {
    return StreamBuilder<PlayerState>(
      stream: ap.audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            width: 32.0,
            height: 32.0,
            child: const CircularProgressIndicator(),
          );
        } else if (playing != true) {
          return IconButton(
            icon: const Icon(Icons.play_arrow),
            iconSize: 32.0,
            onPressed: ap.play,
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            icon: const Icon(Icons.pause),
            iconSize: 32.0,
            onPressed: ap.pause,
          );
        } else {
          return IconButton(
            icon: const Icon(Icons.replay),
            iconSize: 32.0,
            onPressed: () => ap.audioPlayer.seek(Duration.zero),
          );
        }
      },
    );
  }

  _previousButton(AudioProvider ap) {
    return IconButton(
        onPressed: () async {
          ap.previous();
        },
        icon: const Icon(Icons.skip_previous));
  }

  _nextButton(AudioProvider ap) {
    return IconButton(
        onPressed: () async {
          ap.next();
        },
        icon: const Icon(Icons.skip_next));
  }
  */
}

class MinimizedAudioPlayer extends StatefulWidget {
  const MinimizedAudioPlayer({Key? key, this.song}) : super(key: key);
  final SongModel? song;

  @override
  State<MinimizedAudioPlayer> createState() => _MinimizedAudioPlayerState();
}

class _MinimizedAudioPlayerState extends State<MinimizedAudioPlayer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AudioProvider>(builder: (context, ap, _) {
      return Stack(
        children: [
          GestureDetector(
            onTap: () {
              ap.bottomSheetOpen = true;

              Get.bottomSheet(
                BottomSheet(
                  onClosing: () {
                    ap.bottomSheetOpen = false;
                  },
                  enableDrag: false,
                  builder: (context) {
                    return const AudioPlayerWidget();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.redAccent.withOpacity(0.5),
              height: 80,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(mediumRadius),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/siteLogos/YouTube_dark_icon_(2017).svg.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        cusWidth10(),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Spacer(),
                            Row(
                              children: [
                                Expanded(
                                  child: b1Text(
                                    'This is song title and this can be long. May be of eual to 4 sentences',
                                    maxLine: 1,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            cusHeight1(),
                            Row(
                              children: [
                                Expanded(
                                  child: capText(
                                    'This is song artist name',
                                    maxLine: 1,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const AudioProgressBar(),
                          ],
                        )),
                        Row(
                          children: const [
                            PlayButton(),
                            NextSongButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            child: InkWell(
              onTap: () async {
                // ap.audioHandler.dispose();
                // for (var element in ap.audioHandler.queue.value) {
                //   await ap.audioHandler.removeQueueItem(element);
                // }
              },
              child: const Icon(
                Icons.clear,
                size: 18,
              ),
            ),
          ),
        ],
      );
    });
  }
}

class AudioProgressBar extends StatelessWidget {
  const AudioProgressBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: pageManager.progressNotifier,
      builder: (_, value, __) {
        return ProgressBar(
          progress: value.current,
          buffered: value.buffered,
          total: value.total,
          onSeek: pageManager.seek,
        );
      },
    );
  }
}

class AudioControlButtons extends StatelessWidget {
  const AudioControlButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          RepeatButton(),
          PreviousSongButton(),
          PlayButton(),
          NextSongButton(),
          ShuffleButton(),
        ],
      ),
    );
  }
}

class RepeatButton extends StatelessWidget {
  const RepeatButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<RepeatState>(
      valueListenable: pageManager.repeatButtonNotifier,
      builder: (context, value, child) {
        Icon icon;
        switch (value) {
          case RepeatState.off:
            icon = const Icon(Icons.repeat, color: Colors.grey);
            break;
          case RepeatState.repeatSong:
            icon = const Icon(Icons.repeat_one);
            break;
          case RepeatState.repeatPlaylist:
            icon = const Icon(Icons.repeat);
            break;
        }
        return IconButton(
          icon: icon,
          onPressed: pageManager.repeat,
        );
      },
    );
  }
}

class PreviousSongButton extends StatelessWidget {
  const PreviousSongButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isFirstSongNotifier,
      builder: (_, isFirst, __) {
        return IconButton(
          icon: const Icon(Icons.skip_previous),
          onPressed: (isFirst) ? null : pageManager.previous,
        );
      },
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<ButtonState>(
      valueListenable: pageManager.playButtonNotifier,
      builder: (_, value, __) {
        switch (value) {
          case ButtonState.loading:
            return Container(
              margin: const EdgeInsets.all(8.0),
              width: 32.0,
              height: 32.0,
              child: const CircularProgressIndicator(),
            );
          case ButtonState.paused:
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 32.0,
              onPressed: pageManager.play,
            );
          case ButtonState.playing:
            return IconButton(
              icon: const Icon(Icons.pause),
              iconSize: 32.0,
              onPressed: pageManager.pause,
            );
        }
      },
    );
  }
}

class NextSongButton extends StatelessWidget {
  const NextSongButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isLastSongNotifier,
      builder: (_, isLast, __) {
        return IconButton(
          icon: const Icon(Icons.skip_next),
          onPressed: (isLast) ? null : pageManager.next,
        );
      },
    );
  }
}

class ShuffleButton extends StatelessWidget {
  const ShuffleButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageManager = Provider.of<AudioProvider>(context, listen: false);
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isShuffleModeEnabledNotifier,
      builder: (context, isEnabled, child) {
        return IconButton(
          icon: (isEnabled)
              ? const Icon(Icons.shuffle)
              : const Icon(Icons.shuffle, color: Colors.grey),
          onPressed: pageManager.shuffle,
        );
      },
    );
  }
}
