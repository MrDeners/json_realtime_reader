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
    apiKey: 'AIzaSyCBcMPQTUj2N69YC3AfUppl_Oho_2h9BbI',
    appId: '1:864193385526:web:7806b8ab825c5e939a3497',
    messagingSenderId: '864193385526',
    projectId: 'json-realtime-reader',
    authDomain: 'json-realtime-reader.firebaseapp.com',
    storageBucket: 'json-realtime-reader.firebasestorage.app',
    measurementId: 'G-6JYQJB3LLP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4OiVFQE_RPx7Tqqk6nLCTLGJpnmNz1_U',
    appId: '1:864193385526:android:92d763fcc32f8b439a3497',
    messagingSenderId: '864193385526',
    projectId: 'json-realtime-reader',
    storageBucket: 'json-realtime-reader.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgjyQpvjC-FWkvU5JGYMHMuOtxdy2e1ho',
    appId: '1:864193385526:ios:c7841c0a9bb974779a3497',
    messagingSenderId: '864193385526',
    projectId: 'json-realtime-reader',
    storageBucket: 'json-realtime-reader.firebasestorage.app',
    iosBundleId: 'com.example.moodToday',
  );
}
