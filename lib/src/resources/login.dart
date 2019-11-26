import 'package:flutter/material.dart';
import 'package:flutter_hutech_food/src/resources/home.dart';
import 'package:flutter_hutech_food/src/resources/forgotpassword.dart';
class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}
//ádasdasghfsdhgfsdkgf
class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text('ĐĂNG NHẬP',style: TextStyle(fontSize: 25)),

        backgroundColor: Color(0xFFF2B60DE),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30,),
          onPressed: ()=>Navigator.pop(context,false),
        )
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 197, 20, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Tên người dùng",
                    labelStyle: TextStyle(
                      color: Color(0xFFF888888),
                          fontSize: 15
                    )
                  ),
                ),

              ),
              Padding(
                  padding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextField(
                    style: TextStyle(fontSize: 18,color: Colors.black),

                    obscureText: true,
                    decoration: InputDecoration(

                      labelText: "Mật khẩu",
                      labelStyle: TextStyle(fontSize: 15,color: Color(0xFFF888888))
                    ),
                  ),

              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 8),
                width: 365.0,
                child: RaisedButton(

                  color: Color(0xFFF2B60DE),
                  textColor: Colors.white,
                  onPressed: _onHomeClick,
                  child: Text("ĐĂNG NHẬP",style: TextStyle(fontSize: 20)),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.0)
                      )
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  Padding(

                    padding: const EdgeInsets.fromLTRB(200, 0, 135, 0),
                    child: Icon(Icons.help_outline),
                  ),
                  GestureDetector(
                    onTap: _onForgotPassword,
                    child: Text( 'Quên mật khẩu',style: TextStyle(fontSize: 20)),
                  ),


                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,

                child: Image(image: AssetImage('assets/2.png'),),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _onHomeClick()
  {
      Navigator.of(context).push(MaterialPageRoute (builder: (context)=>Home()));
  }
  void _onForgotPassword()
  {
    Navigator.of(context).push(MaterialPageRoute (builder: (context)=>Forgot()));
  }

}