import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(0xff075E54),
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Color(0xff128C7E),
        // ),

        fontFamily: "OpenSans",
      ),
      home: HomePage(),
    );
  }
}
