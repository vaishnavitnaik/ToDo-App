import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // const TodoPage({super.key});
  TextEditingController myController = TextEditingController();

  String greetingMessage = '';

  void greetUser() {
    setState(() {
      String username = myController.text;
      if (username != '') {
        greetingMessage = 'Hello! ' + username;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type your name here please..',
              ),
            ),
            ElevatedButton(onPressed: greetUser, child: Text('Tap'))
          ],
        ),
      ),
    ));
  }
}
