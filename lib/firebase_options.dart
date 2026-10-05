// File generated based on FlutterFire config.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqtoN6ldzFQCtIuck_GlrW1nukJFi6xmE',
    appId: '1:334133412641:android:cb7bf83bcdcbbe2e2df460',
    messagingSenderId: '334133412641',
    projectId: 'portfolio-df6e4',
    storageBucket: 'portfolio-df6e4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkNUrjbwyWvnUXQaXJZaRC2jxMZGRCybY',
    appId: '1:334133412641:ios:d093b782bbc217872df460',
    messagingSenderId: '334133412641',
    projectId: 'portfolio-df6e4',
    storageBucket: 'portfolio-df6e4.firebasestorage.app',
    iosBundleId: 'com.example.portfolio',
  );
}
