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
    apiKey: 'AIzaSyD2KQ7Xajx5Zcm_qsZAyQ_62NhW9evF6S8',
    appId: '1:569614255131:web:c2b75bf72efb3e7076a4be',
    messagingSenderId: '569614255131',
    projectId: 'test-firebase-spinup',
    authDomain: 'test-firebase-spinup.firebaseapp.com',
    storageBucket: 'test-firebase-spinup.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXUSppUR8mt3An7fPYmemapFyw7pB37yw',
    appId: '1:569614255131:android:3b3f17ba61af6f6876a4be',
    messagingSenderId: '569614255131',
    projectId: 'test-firebase-spinup',
    storageBucket: 'test-firebase-spinup.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1BB-KUeLGflUJSJ11-TqZ10tjZ-BdGfk',
    appId: '1:569614255131:ios:7ca71c997df8f8ff76a4be',
    messagingSenderId: '569614255131',
    projectId: 'test-firebase-spinup',
    storageBucket: 'test-firebase-spinup.appspot.com',
    iosClientId: '569614255131-2a539v4a510mf469681jg6aggfieci6q.apps.googleusercontent.com',
    iosBundleId: 'com.example.promptdiary',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1BB-KUeLGflUJSJ11-TqZ10tjZ-BdGfk',
    appId: '1:569614255131:ios:7ca71c997df8f8ff76a4be',
    messagingSenderId: '569614255131',
    projectId: 'test-firebase-spinup',
    storageBucket: 'test-firebase-spinup.appspot.com',
    iosClientId: '569614255131-2a539v4a510mf469681jg6aggfieci6q.apps.googleusercontent.com',
    iosBundleId: 'com.example.promptdiary',
  );
}