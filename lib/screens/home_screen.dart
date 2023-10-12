import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 26, 39, 51),
      child: Scaffold(
        //Todo List main scaffold

        //Text box input
        //add button
        //List Header "To-do List"
        //Items loop (can be expandable)
          //check box
          //text
          //delete button
      )
    );
  }
}