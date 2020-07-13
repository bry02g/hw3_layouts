import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  const Question2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 2: Columns'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[

            // ADD YOUR WIDGETS HERE

          ]),
    ));
  }
}
