import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBTeYPSgNTpt9KtP03LIXcq1-Og42fOaCE",
            authDomain: "speakdata-f1d03.firebaseapp.com",
            projectId: "speakdata-f1d03",
            storageBucket: "speakdata-f1d03.appspot.com",
            messagingSenderId: "772498197174",
            appId: "1:772498197174:web:1802acf98468fa6d023417"));
  } else {
    await Firebase.initializeApp();
  }
}
