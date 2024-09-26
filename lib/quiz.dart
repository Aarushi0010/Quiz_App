import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';

  void switchScreen (){
    setState(() {
      activeScreen  = 'question-screen';
    });

  }

  @override
  Widget build(context){

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen=='question-screen'){
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.indigoAccent ,],
                begin :Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),


            child: screenWidget,
          )),
    );
  }
}