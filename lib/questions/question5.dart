import 'package:flutter/material.dart';

class Question5 extends StatefulWidget {
  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {

  List<String> imageUrls = [
    "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp",
    "https://i.insider.com/5de2cd3fe94e8635a17ca8ae?width=1100&format=jpeg&auto=webp",
    "https://media4.s-nbcnews.com/j/newscms/2019_47/3112746/191121-baby-yoda-cs-959a_ed40d38efa3cde7ab92df2d5492a81a5.fit-1120w.jpg"
  ];

  int currentIndex = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Question 5'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image.network(
                imageUrls[currentIndex]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                iconSize: 40,
                icon: Icon(Icons.shuffle),
                onPressed: (){
                  setState(() {
                    if(currentIndex + 1 < imageUrls.length){
                      currentIndex++;
                    }
                    else{
                      currentIndex = 0;
                    }
                  });
                },
              ),
            )
          ])),
    );
  }
}
/*
class Question5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Images'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image.network(
                "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: IconButton(
                iconSize: 40,
                icon: Icon(Icons.shuffle),
                onPressed: (){},
              ),
            )
          ])),
    );
  }
}
*/
