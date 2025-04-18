import 'package:firebase_core/firebase_core.dart';
import 'package:skinvision/Src/firebase_options.dart';


// ignore: non_constant_identifier_names
Future<Function> firebasehandler () async { 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}