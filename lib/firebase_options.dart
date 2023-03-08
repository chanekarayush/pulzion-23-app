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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvLmV4eqSi2K_D4IuowK4E3yusBeXDWFg',
    appId: '1:1073515270647:android:5f8540cfd5225d91865ef2',
    messagingSenderId: '1073515270647',
    projectId: 'fcmtestserver-86214',
    storageBucket: 'fcmtestserver-86214.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2XvG9XV2FJQ61B4nvYW7bg9dCvvta0uw',
    appId: '1:1073515270647:ios:ab8ce36f77bea79d865ef2',
    messagingSenderId: '1073515270647',
    projectId: 'fcmtestserver-86214',
    storageBucket: 'fcmtestserver-86214.appspot.com',
    androidClientId:
        '1073515270647-vlv1g1pmvrdoiq1tqunemigup0rpkghl.apps.googleusercontent.com',
    iosClientId:
        '1073515270647-atrbpr09t0da6f1ejqn0a3n969b4kqiv.apps.googleusercontent.com',
    iosBundleId: 'com.pasc.pulzion23',
  );
}
