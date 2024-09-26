import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart';
import'package:quiz_app/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {

   List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen (){
    setState(() {
      activeScreen  = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      // selectedAnswers = [];
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen=='question-screen'){
      screenWidget =  Questions(onSelectAnswer:  chooseAnswer);
    }
    
    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
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