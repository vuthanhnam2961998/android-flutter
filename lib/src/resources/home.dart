//import 'package:flutter_hutech_food/src/resources/successfulregister.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: Image(image: AssetImage('assets/4.png'),), 
        backgroundColor: Colors.blue,
        
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
      ),
    );
  }
  // void _onRegisterClick() {
  //   Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => SuccessfulRegister()));
  // }
}




