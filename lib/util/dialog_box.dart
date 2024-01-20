import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
            height: 120,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Add a new task",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // MyButton(text: "Save", onPressed(){
                      //  onSave();
                      //   controller.clear()});
                      MyButton(
                          text: "Save",
                          onPressed: () {
                            onSave();
                            controller
                                .clear(); // Clear the text field after saving
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      MyButton(
                          text: "Cancel",
                          onPressed: () {
                            onCancel();
                            controller
                                .clear(); // Clear the text field after saving
                          }),
                    ],
                  )
                  // sanve and cancel button
                ])));
  }
}
