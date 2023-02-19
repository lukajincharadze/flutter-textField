import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statful Widget"),
        ),
        body: FirstStateFulWidget(),
      ),
    );
  }
}

class FirstStateFulWidget extends StatefulWidget {
  const FirstStateFulWidget({Key? key}): super(key: key);
  
  @override
  State<FirstStateFulWidget> createState() => _FirstStateFulWidgetState();
}

class _FirstStateFulWidgetState extends State<FirstStateFulWidget> {

  var userText = "Hello World";
  var userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(userText),
        Container(
          margin: EdgeInsets.only(left: 32, right: 32),
          child: TextField(
            controller: userInput,
            decoration: InputDecoration(
              hintText: "username"
            ),
          ),
        ),
        TextButton(onPressed: () {
          setState(() {
            userText = userInput.text;
          });
        }, child: Text("Click me")),
      ],
    );
  }
}
