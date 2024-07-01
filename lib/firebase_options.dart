// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDFvDkLEdzotimBahgvlcTF2GbpHfgac7Q',
    appId: '1:580870708382:web:26e6c8ccae16065f13ef8f',
    messagingSenderId: '580870708382',
    projectId: 'chatappproject-1d4b3',
    authDomain: 'chatappproject-1d4b3.firebaseapp.com',
    storageBucket: 'chatappproject-1d4b3.appspot.com',
    measurementId: 'G-YCG4CT87RC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCisvlZV-O2NaqF3T1nUYGu4YxW8Kg7YYQ',
    appId: '1:580870708382:android:76093decf3ecad4213ef8f',
    messagingSenderId: '580870708382',
    projectId: 'chatappproject-1d4b3',
    storageBucket: 'chatappproject-1d4b3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeR-saZjqyewHJTdmYVVWcYJ98URtAlsM',
    appId: '1:580870708382:ios:d01d7f84253b0d8b13ef8f',
    messagingSenderId: '580870708382',
    projectId: 'chatappproject-1d4b3',
    storageBucket: 'chatappproject-1d4b3.appspot.com',
    iosBundleId: 'com.example.chatappProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCeR-saZjqyewHJTdmYVVWcYJ98URtAlsM',
    appId: '1:580870708382:ios:d01d7f84253b0d8b13ef8f',
    messagingSenderId: '580870708382',
    projectId: 'chatappproject-1d4b3',
    storageBucket: 'chatappproject-1d4b3.appspot.com',
    iosBundleId: 'com.example.chatappProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDFvDkLEdzotimBahgvlcTF2GbpHfgac7Q',
    appId: '1:580870708382:web:2e4cd2a0845bfd5013ef8f',
    messagingSenderId: '580870708382',
    projectId: 'chatappproject-1d4b3',
    authDomain: 'chatappproject-1d4b3.firebaseapp.com',
    storageBucket: 'chatappproject-1d4b3.appspot.com',
    measurementId: 'G-JEGC59GQQC',
  );
}
