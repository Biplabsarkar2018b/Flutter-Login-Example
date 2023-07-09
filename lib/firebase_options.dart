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
    apiKey: 'AIzaSyB4Lyva2F2BVaW5Q3LmCGI3Zkp1NsOonY0',
    appId: '1:355367387550:web:33b9573a1ad63ebdbd968f',
    messagingSenderId: '355367387550',
    projectId: 'fir-57179',
    authDomain: 'fir-57179.firebaseapp.com',
    storageBucket: 'fir-57179.appspot.com',
    measurementId: 'G-6DJYC2QND5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIbnUc-vxhBvVcTXdpxs4CYGrorjnhTY4',
    appId: '1:355367387550:android:cb687f2598e2970ebd968f',
    messagingSenderId: '355367387550',
    projectId: 'fir-57179',
    storageBucket: 'fir-57179.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASdWYP3lXGuvFTl9U-NfGwXTOJsqLLHI4',
    appId: '1:355367387550:ios:2ff2c5eecc9c158cbd968f',
    messagingSenderId: '355367387550',
    projectId: 'fir-57179',
    storageBucket: 'fir-57179.appspot.com',
    iosClientId: '355367387550-hecnntdlt9cm7ovlmg0tootsm3gs295r.apps.googleusercontent.com',
    iosBundleId: 'com.example.chi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASdWYP3lXGuvFTl9U-NfGwXTOJsqLLHI4',
    appId: '1:355367387550:ios:2ff2c5eecc9c158cbd968f',
    messagingSenderId: '355367387550',
    projectId: 'fir-57179',
    storageBucket: 'fir-57179.appspot.com',
    iosClientId: '355367387550-hecnntdlt9cm7ovlmg0tootsm3gs295r.apps.googleusercontent.com',
    iosBundleId: 'com.example.chi',
  );
}
