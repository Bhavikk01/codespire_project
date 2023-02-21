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
    apiKey: 'AIzaSyD8DpU3BFrumE_j52dXCe9RpIjvNd4qEdk',
    appId: '1:821191142944:web:12d938489910ed3d3fd645',
    messagingSenderId: '821191142944',
    projectId: 'sentimentaldiary',
    authDomain: 'sentimentaldiary.firebaseapp.com',
    storageBucket: 'sentimentaldiary.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDj2Uli5HL4tILqvk_Q9WWEhPK_t46k2Ik',
    appId: '1:821191142944:android:b963f744982e9f343fd645',
    messagingSenderId: '821191142944',
    projectId: 'sentimentaldiary',
    storageBucket: 'sentimentaldiary.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa4b31usup1lekPGLpWn-VEz8YWXe0chE',
    appId: '1:821191142944:ios:f3ab6ebfeea9b5d53fd645',
    messagingSenderId: '821191142944',
    projectId: 'sentimentaldiary',
    storageBucket: 'sentimentaldiary.appspot.com',
    iosClientId: '821191142944-u89ufnug44mqbjc1ed3p86sjr20jbhm2.apps.googleusercontent.com',
    iosBundleId: 'com.example.codespireApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBa4b31usup1lekPGLpWn-VEz8YWXe0chE',
    appId: '1:821191142944:ios:f3ab6ebfeea9b5d53fd645',
    messagingSenderId: '821191142944',
    projectId: 'sentimentaldiary',
    storageBucket: 'sentimentaldiary.appspot.com',
    iosClientId: '821191142944-u89ufnug44mqbjc1ed3p86sjr20jbhm2.apps.googleusercontent.com',
    iosBundleId: 'com.example.codespireApp',
  );
}
