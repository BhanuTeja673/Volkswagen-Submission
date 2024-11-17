import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web; // Add web configuration here
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return iOS; // Add iOS configuration here
      case TargetPlatform.macOS:
        return macOS; // Add macOS configuration here
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByEe5RQUXeyJrQPWD-Bq83Wcgli9wH05M',
    appId: '1:273571821285:android:de4354e86114697e54060c',
    messagingSenderId: '1048927126291',
    projectId: 'drivewell-d3f0b',
    storageBucket: 'drivewell-d3f0b.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: '<YOUR_WEB_API_KEY>',
    appId: '<YOUR_WEB_APP_ID>',
    messagingSenderId: '<YOUR_WEB_MESSAGING_SENDER_ID>',
    projectId: 'drivewell-d3f0b',
    storageBucket: 'drivewell-d3f0b.appspot.com',
  );

  static const FirebaseOptions iOS = FirebaseOptions(
    apiKey: '<YOUR_IOS_API_KEY>',
    appId: '<YOUR_IOS_APP_ID>',
    messagingSenderId: '<YOUR_IOS_MESSAGING_SENDER_ID>',
    projectId: 'drivewell-d3f0b',
    storageBucket: 'drivewell-d3f0b.appspot.com',
  );

  static const FirebaseOptions macOS = FirebaseOptions(
    apiKey: '<YOUR_MACOS_API_KEY>',
    appId: '<YOUR_MACOS_APP_ID>',
    messagingSenderId: '<YOUR_MACOS_MESSAGING_SENDER_ID>',
    projectId: 'drivewell-d3f0b',
    storageBucket: 'drivewell-d3f0b.appspot.com',
  );
}
