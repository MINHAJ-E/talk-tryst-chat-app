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
    apiKey: 'AIzaSyA5PL6hCPhbpYpMicHzuH14BTdmLf5JfXE',
    appId: '1:184553814975:web:91733ac406c42ae4e5bf0a',
    messagingSenderId: '184553814975',
    projectId: 'talk-tryst',
    authDomain: 'talk-tryst.firebaseapp.com',
    storageBucket: 'talk-tryst.appspot.com',
    measurementId: 'G-8VT7WPD7LH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9I6OFFDw6W6MPN4dnwQWUQU3W0Rarc9c',
    appId: '1:184553814975:android:c260918d5dcf4bcee5bf0a',
    messagingSenderId: '184553814975',
    projectId: 'talk-tryst',
    storageBucket: 'talk-tryst.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbZToxY2jDQ_Gu5gRK79KCHExEAQ5gY_8',
    appId: '1:184553814975:ios:356e47a729d0fd39e5bf0a',
    messagingSenderId: '184553814975',
    projectId: 'talk-tryst',
    storageBucket: 'talk-tryst.appspot.com',
    iosBundleId: 'com.example.talkTryst',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbZToxY2jDQ_Gu5gRK79KCHExEAQ5gY_8',
    appId: '1:184553814975:ios:27b16b3088be5b69e5bf0a',
    messagingSenderId: '184553814975',
    projectId: 'talk-tryst',
    storageBucket: 'talk-tryst.appspot.com',
    iosBundleId: 'com.example.talkTryst.RunnerTests',
  );
}
