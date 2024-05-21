// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo/utili/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
VoidCallback onSave;
VoidCallback onCancel;

   DialogBox({super.key,required this.controller,
   required this.onSave,
   required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
    content: Container(
      height: 120,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // get user input
          TextField(
            controller:controller ,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: 'Add a new task'
            ),
          ),

          // button => save=> cancel
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // save button 
              MyButton(text: "save", onPressed: onSave),
              // cancel button
              MyButton(text: "cancel", onPressed: onCancel)
            ],
          )
        ],
      ),
    ),  
    );
  }
}