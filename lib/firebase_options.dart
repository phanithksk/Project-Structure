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
    apiKey: 'AIzaSyAASTQDMl9blAKz5ansa-QKEWqJDXWcCno',
    appId: '1:72673089972:web:cbac21e3021b5779fe3ae1',
    messagingSenderId: '72673089972',
    projectId: 'projectstructure-862dc',
    authDomain: 'projectstructure-862dc.firebaseapp.com',
    storageBucket: 'projectstructure-862dc.appspot.com',
    measurementId: 'G-QW7HXHXKP3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC73UyuZfiuJTBoJ3i7KTy6xuKux6wkrc0',
    appId: '1:72673089972:android:6da8bc9095ffcbc0fe3ae1',
    messagingSenderId: '72673089972',
    projectId: 'projectstructure-862dc',
    storageBucket: 'projectstructure-862dc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoFMYM2xU8T3XNhElZq034r2ooZesEAR4',
    appId: '1:72673089972:ios:c61eec6b30d69de3fe3ae1',
    messagingSenderId: '72673089972',
    projectId: 'projectstructure-862dc',
    storageBucket: 'projectstructure-862dc.appspot.com',
    iosBundleId: 'com.example.projectStructure',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoFMYM2xU8T3XNhElZq034r2ooZesEAR4',
    appId: '1:72673089972:ios:348bf8210737747afe3ae1',
    messagingSenderId: '72673089972',
    projectId: 'projectstructure-862dc',
    storageBucket: 'projectstructure-862dc.appspot.com',
    iosBundleId: 'com.example.projectStructure.RunnerTests',
  );
}
