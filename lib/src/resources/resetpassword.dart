
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hutech_food/src/resources/resetpasswordsuccessfully.dart';
class ResetPassword extends StatefulWidget{
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ĐẶT LẠI MẬT KHẨU',style: TextStyle(fontSize: 25),),
        backgroundColor: Color(0xFFF2B60DE),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 30,),
          onPressed:()=> Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20,140,20,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Vui lòng đặt lại mật khẩu của bạn',textAlign: TextAlign.center,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(
                    fontSize: 18,color: Colors.black
                ),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Mật khẩu mới",
                  labelStyle: TextStyle(
                      color: Color(0xFFF888888),
                      fontSize: 15
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(
                    fontSize: 18,color: Colors.black
                ),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Nhập lại mật khẩu",
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
                onPressed: _onResetPasswordSuccessfully,
                child: Text("Tiếp tục",style: TextStyle(fontSize: 20),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0)

                    )
                ),

              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(0, 77, 0, 0),
              width:  double.infinity,
              child: Image(image: AssetImage('assets/2.png'),),
            ),

          ],
        ),

      ),
    );
  }
  void _onResetPasswordSuccessfully(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResetPasswordSuccessfully()));
}

}