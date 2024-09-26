import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key , required this.answerText , required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build (context){
    return  ElevatedButton(
        onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
    ),
      child:  Text(answerText , style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),textAlign: TextAlign.center,),);
  }
}