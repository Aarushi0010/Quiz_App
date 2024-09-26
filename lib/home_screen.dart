import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget{

  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min ,
          children: [
           Image.asset('assets/images/quiz-logo.png',
           width : 300,
           color: Colors.white,),

            const SizedBox(
              height: 30,
            ),

             Text('Learn flutter in a fun way',
            style: GoogleFonts.lora(
              fontSize: 30,
              color : const Color.fromARGB(160, 30, 30, 30),
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(height: 30,),

            OutlinedButton.icon
              (onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz' )),

      ],
    ));
  }
}