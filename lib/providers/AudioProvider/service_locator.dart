import 'package:altra_tube/providers/AudioProvider/MyAudioHandler.dart';
import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AudioHandler>(await initAudioService());
  // getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());
  // getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());
  //
  // page state
  // getIt.registerLazySingleton<PageManager>(() => PageManager());
}
