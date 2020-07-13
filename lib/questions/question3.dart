import 'package:flutter/material.dart';

class Question3 extends StatelessWidget {
  const Question3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Question 3: Rows & Columns'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[

              // ADD YOUR WIDGETS HERE

            ]),
      ),
    ));
  }
}
