import 'package:flutter/material.dart';

class Question3 extends StatefulWidget {
  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  TextEditingController _newPasswordTextEditingController =
      TextEditingController();
  TextEditingController _confirmNewPasswordTextEditingController =
      TextEditingController();

  bool _match = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Question 3'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  'Reset Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _newPasswordTextEditingController,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _confirmNewPasswordTextEditingController,
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  _match ? "" : "Passwords Don't Match",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                Spacer(),
                RaisedButton(
                    child: Text('Done'),
                    color: Colors.lightBlue,
                    onPressed: () {
                      setState(() {
                        var newPassword =
                            _newPasswordTextEditingController.text;
                        var confirmPassword =
                            _confirmNewPasswordTextEditingController.text;

                        _match = (newPassword == confirmPassword);
                      });
                    }),
                Spacer(),
              ],
            ),
          )),
    );
  }
}
