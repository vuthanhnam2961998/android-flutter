import 'package:flutter/material.dart';
import 'package:flutter_hutech_food/src/resources/login.dart';
class ResetPasswordSuccessfully extends StatefulWidget{
  @override
  _ResetPasswordSuccessfullyState createState()=> _ResetPasswordSuccessfullyState();
}
class _ResetPasswordSuccessfullyState extends State<ResetPasswordSuccessfully>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            constraints: BoxConstraints.expand(),
            child: Column(
              children: <Widget>[
                SizedBox(height: 150.0,),
                Container(
                 // padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                  width: 150,
                  height: 150,
                  child: Image(image: AssetImage('assets/dautichxanh.png'),),
                ),
                SizedBox(height: 15.0,),//cách khoảng
                //Dòng chữ thông báo
                Container(
                  child: Text('Bạn đã thay đổi mật khẩu thành công',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 15.0,),
                Container(
                  width: 365.0,
                  child: RaisedButton(
                    color: Color(0xFFF2B60DE),
                    textColor: Colors.white,
                    onPressed: _onLoginClick,
                    child: Text('ĐĂNG NHẬP LẠI',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(20.0)
                        )
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                  width:  double.infinity,
                  child: Image(image: AssetImage('assets/2.png'),),
                ),
              ],
            ),
    )
    )
    );
  }
  void _onLoginClick() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
  }
}