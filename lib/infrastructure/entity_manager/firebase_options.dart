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
    apiKey: 'AIzaSyCrBEekBOHT02M3wL4YgqCcPQgYrZYPV5M',
    appId: '1:1019223622260:web:fb1945e9aafd3ec5260721',
    messagingSenderId: '1019223622260',
    projectId: 'db-pizza-app',
    authDomain: 'db-pizza-app.firebaseapp.com',
    storageBucket: 'db-pizza-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMeUssXp6XbhHTycFbFYiCe3eDt3-nH0E',
    appId: '1:1019223622260:android:fce836984b08bfb3260721',
    messagingSenderId: '1019223622260',
    projectId: 'db-pizza-app',
    storageBucket: 'db-pizza-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0q4vC6X7BcUEmyQBIVwPwfNSZcEv7bqY',
    appId: '1:1019223622260:ios:ec69910381da9bfb260721',
    messagingSenderId: '1019223622260',
    projectId: 'db-pizza-app',
    storageBucket: 'db-pizza-app.appspot.com',
    iosClientId:
        '1019223622260-q8epvsgksgui4d29d7vrjjt78lep338j.apps.googleusercontent.com',
    iosBundleId: 'com.example.pizzaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0q4vC6X7BcUEmyQBIVwPwfNSZcEv7bqY',
    appId: '1:1019223622260:ios:ec69910381da9bfb260721',
    messagingSenderId: '1019223622260',
    projectId: 'db-pizza-app',
    storageBucket: 'db-pizza-app.appspot.com',
    iosClientId:
        '1019223622260-q8epvsgksgui4d29d7vrjjt78lep338j.apps.googleusercontent.com',
    iosBundleId: 'com.example.pizzaApp',
  );
}
