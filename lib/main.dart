import 'package:flutter/material.dart';
import 'package:typeracer/screens/create_screen.dart';
import 'package:typeracer/screens/home_screen.dart';
import 'package:typeracer/screens/join_room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TypeRacer',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      initialRoute: '/ ',
      routes: {
        '/':(context)=> HomeScreen(),
        '/create-room':(context)=> CreateRoomScreen(),
        '/join-room':(context)=> joinRoomScreen(),

      }
    );
  }
}

