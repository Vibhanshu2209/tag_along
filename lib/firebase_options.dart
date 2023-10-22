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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBewvsWzF6TSFWoez62ZxcyvdVGAidEZt8',
    appId: '1:900424041554:web:d7d902be9609c127b6cb8b',
    messagingSenderId: '900424041554',
    projectId: 'event-pool-v2209',
    authDomain: 'event-pool-v2209.firebaseapp.com',
    databaseURL: 'https://event-pool-v2209-default-rtdb.firebaseio.com',
    storageBucket: 'event-pool-v2209.appspot.com',
    measurementId: 'G-1YCS1VXEF6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXk0_HOXx3lD5yTUhfBNECkQsa3YaZXxw',
    appId: '1:900424041554:android:a6a65901c895338eb6cb8b',
    messagingSenderId: '900424041554',
    projectId: 'event-pool-v2209',
    databaseURL: 'https://event-pool-v2209-default-rtdb.firebaseio.com',
    storageBucket: 'event-pool-v2209.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmRolCH42gDd5rQfRSDixB8HfpIzMIzFc',
    appId: '1:900424041554:ios:de0e0d8c050dcc62b6cb8b',
    messagingSenderId: '900424041554',
    projectId: 'event-pool-v2209',
    databaseURL: 'https://event-pool-v2209-default-rtdb.firebaseio.com',
    storageBucket: 'event-pool-v2209.appspot.com',
    iosClientId: '900424041554-rn4bc5h8bqfrsuvem3p1foumtarni8j3.apps.googleusercontent.com',
    iosBundleId: 'com.example.tagAlong',
  );
}
