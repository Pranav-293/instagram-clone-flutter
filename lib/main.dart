import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_screen.dart';

void main() async{
  if(kIsWeb){
    Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCnyOFjq_T65B1ibWo-qzHYLgfX8fyVRAQ",
          appId: "1:487753696123:web:dd8c8f3c66ec1044c733de",
          messagingSenderId: "487753696123",
          projectId: "instagram-clone-d90f7"
      )
    );
  }else{
    Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: ResponsiveLayout(mobileScreenLayout: MobileLayout(), webScreenLayout: WebLayout()),
      home: LoginScreen(),
    );
  }
}
