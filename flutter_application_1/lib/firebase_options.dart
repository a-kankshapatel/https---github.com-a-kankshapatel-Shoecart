// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA5uoeIohQSJEhEr-qk_w-u8Rrnbiek1Tw',
    appId: '1:855084014176:web:090496cc82261cb4c64105',
    messagingSenderId: '855084014176',
    projectId: 'footwear-fb-app',
    authDomain: 'footwear-fb-app.firebaseapp.com',
    storageBucket: 'footwear-fb-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbC67hEaZRjUQeNMQzNrGPDo2HzUDvHOM',
    appId: '1:855084014176:android:93f4da25a9bdb743c64105',
    messagingSenderId: '855084014176',
    projectId: 'footwear-fb-app',
    storageBucket: 'footwear-fb-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQw5bZT-TVKbNp_vFF53ktOm_njzM7M8Q',
    appId: '1:855084014176:ios:d7612a264baba6c9c64105',
    messagingSenderId: '855084014176',
    projectId: 'footwear-fb-app',
    storageBucket: 'footwear-fb-app.appspot.com',
    iosClientId: '855084014176-kcvfmm3pfg095iv4k8i7c51mga7g6thi.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQw5bZT-TVKbNp_vFF53ktOm_njzM7M8Q',
    appId: '1:855084014176:ios:d7612a264baba6c9c64105',
    messagingSenderId: '855084014176',
    projectId: 'footwear-fb-app',
    storageBucket: 'footwear-fb-app.appspot.com',
    iosClientId: '855084014176-kcvfmm3pfg095iv4k8i7c51mga7g6thi.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
