import 'package:chatapp_project/pages/chat_page.dart';
import 'package:chatapp_project/pages/resgister_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_project/pages/login_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => LoginPage(),
        ResgisterPage().id: (context) => ResgisterPage(),
        ChatPage.id: (context) => ChatPage(),
      },
      initialRoute: 'LoginPage',
    );
  }
}
