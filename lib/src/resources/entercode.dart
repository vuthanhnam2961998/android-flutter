
import 'package:flutter/material.dart';
import 'package:flutter_hutech_food/src/resources/resetpassword.dart';
class EnterCode extends StatefulWidget{
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('XÁC NHẬN',style: TextStyle(fontSize: 25),),
        backgroundColor: Color(0xFFF2B60DE),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 30,),
          onPressed:()=> Navigator.pop(context,false),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20,150,20,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Chúng tôi đã gửi bạn một mã số gồm 6 chữ số vào địa chỉ email của bạn',textAlign: TextAlign.center,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold,)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  labelText: "Nhập mã vào đây",
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
                onPressed: _onResetpasswordClick,
                child: Text("Tiếp tục",style: TextStyle(fontSize: 20),),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0)

                    )
                ),

              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: <Widget>[
                Padding(

                  padding: const EdgeInsets.fromLTRB(25, 7, 248, 0),
                  child:Text( 'Gửi lại mã',style: TextStyle(fontSize: 20))
                ),
                Icon(Icons.send),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
              width:  double.infinity,
              child: Image(image: AssetImage('assets/2.png'),),
            ),

          ],
        ),

      ),
    );
  }
  void _onResetpasswordClick(){
    Navigator.of(context).push(MaterialPageRoute (builder:(context)=> ResetPassword()));
  }
}