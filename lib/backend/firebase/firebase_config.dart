import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyArf9BoEtyr708e4AzTOKTMyj5JnbxX5bc",
            authDomain: "speak-d3a4f.firebaseapp.com",
            projectId: "speak-d3a4f",
            storageBucket: "speak-d3a4f.appspot.com",
            messagingSenderId: "28958942252",
            appId: "1:28958942252:web:ab00f1b0a7e91f6f289d89"));
  } else {
    await Firebase.initializeApp();
  }
}
