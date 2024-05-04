// import 'package:birdie_flutter_project/firebase_options.dart';
import 'package:birdie_flutter_project/firebase_options.dart';
import 'package:birdie_flutter_project/screens/createaccount.dart';
import 'package:birdie_flutter_project/screens/forgetpassword.dart';
import 'package:birdie_flutter_project/screens/home.dart';
import 'package:birdie_flutter_project/screens/login.dart';
import 'package:birdie_flutter_project/screens/monitor.dart';
import 'package:birdie_flutter_project/screens/profilepage.dart';
import 'package:birdie_flutter_project/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Birdie());
}
// void main() {
//   runApp(const Birdie());
// }

class Birdie extends StatefulWidget {
  const Birdie({super.key});

  @override
  State<Birdie> createState() => _BirdieState();
}

class _BirdieState extends State<Birdie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => Login(),
        '/createaccount': (context) => CreateAccount(),
        '/forgetpassword': (context) => const ForgetPasswordpage(),
        '/home': (context) => const Home(),
        '/profilepage': (context) => const ProfilePage(),
        '/monitorpage': (context) => const MonitorPage(),
      }
    );
   }
}
