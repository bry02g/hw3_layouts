import 'package:flutter/material.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Question 1'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Press button to make me green',
                      textAlign: TextAlign.center,
                      style: TextStyle( 
                        fontSize: 25,

                        // WILL NEED TO MODIFY THIS LINE
                        color: Colors.black,

                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: RaisedButton(
                        child: Text('Make Green'),
                        color: Colors.green,
                        onPressed: (){
                         // ADD YOUR CODE HERE
                        },
                      ),
                    )
                  ]),
            ),
          )),
    );
  }
}
