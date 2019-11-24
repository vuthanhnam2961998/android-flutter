import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_hutech_food/src/resources/entercode.dart';
class Forgot extends StatefulWidget{
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('QUÊN MẬT KHẨU',style: TextStyle(fontSize: 25),),
        backgroundColor: Color(0xFFF2B60DE),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 30,),
          onPressed:()=> Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20,180,20,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Vui lòng nhập địa chỉ email để khôi phục lại mật khẩu',textAlign: TextAlign.center,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                ),
                decoration: InputDecoration(
                    labelText: "Địa chỉ email",
                    labelStyle: TextStyle(
                      color: Color(0xFFF888888),
                      fontSize: 15
                    ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 365.0,
              child: RaisedButton(
                color: Color(0xFFF2B60DE),
                textColor: Colors.white,
                onPressed: _onEntercodeClick,
                child: Text("Tiếp tục",style: TextStyle(fontSize: 20),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0)

                  )
                ),

              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
              width:  double.infinity,
              child: Image(image: AssetImage('assets/2.png'),),
            )
          ],
        ),

      ),
    );
  }
  void _onEntercodeClick(){
    Navigator.of(context).push(MaterialPageRoute (builder:(context)=> EnterCode()));
  }

}