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
    apiKey: 'AIzaSyBJvjcLbD5sbGo454YkapVxdYE6f8RNVKY',
    appId: '1:231224602887:web:209b2b2432a8431a83d5a2',
    messagingSenderId: '231224602887',
    projectId: 'my-chat-bot-0017000',
    authDomain: 'my-chat-bot-0017000.firebaseapp.com',
    storageBucket: 'my-chat-bot-0017000.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBimwsfHBxsjKNbGRCafem6Ykr152VRvoI',
    appId: '1:231224602887:android:e41f19bbdb624e2f83d5a2',
    messagingSenderId: '231224602887',
    projectId: 'my-chat-bot-0017000',
    storageBucket: 'my-chat-bot-0017000.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuM21_j1onXD58tyqCPpFx4H2lEJL1EUU',
    appId: '1:231224602887:ios:9e8135aad608b18183d5a2',
    messagingSenderId: '231224602887',
    projectId: 'my-chat-bot-0017000',
    storageBucket: 'my-chat-bot-0017000.appspot.com',
    iosClientId: '231224602887-uh9u29n1k240s8nkgtqgk9gcnq6am03o.apps.googleusercontent.com',
    iosBundleId: 'com.example.fleur',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuM21_j1onXD58tyqCPpFx4H2lEJL1EUU',
    appId: '1:231224602887:ios:14e972b2833e21f783d5a2',
    messagingSenderId: '231224602887',
    projectId: 'my-chat-bot-0017000',
    storageBucket: 'my-chat-bot-0017000.appspot.com',
    iosClientId: '231224602887-g9lgg32qharpreifbs1ipq6enmr7sk9d.apps.googleusercontent.com',
    iosBundleId: 'com.example.fleur.RunnerTests',
  );
}
