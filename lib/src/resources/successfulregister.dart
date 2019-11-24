import 'package:flutter_hutech_food/src/resources/home.dart';//chỗ này t đang code
import 'package:flutter/material.dart';// cũng là nó
//trang này là trang thông báo đăng ký thành côgn
class SuccessfulRegister extends StatefulWidget {//trang tên j thì phải sửa chỗ này trùng tên nha
  @override
  _SuccessfulRegisterState createState() => _SuccessfulRegisterState();
}

class _SuccessfulRegisterState extends State<SuccessfulRegister> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 25),//rồi ok m ơi . t cảm ơn nha. t cũng hiểu sơ sơ rồi . tối t về t học thêm. hk bk j thì lên google gõ tìm code r học code theo.ừm
          //Khi đưa ảnh vào nhớ khai báo nha. pubspec.yaml
          //vậy đi. t code giao diện trang chủ đâddaaym bye. ok gửi t file.ok
          //m muốn gửi cả file hay t copy chữ thôi. file đi, ok
          //vậy h m làm form đăng nhập đi nha.ok
          //có 5 form 
          //trựt con mẹ nó màu r. là sao. m thấy cái chữ Hutech Food ko. Nó là hình ảnh t cắt ra đó. chứ t vẫn chưa bk add kiểu chữ dô. Nên màu nền của hình khác vs màu appbar :(.ờ
          constraints: BoxConstraints.expand(),
          //child: SingleChildScrollView(//dòng này thì tùy thôi. trang này t bỏ cũng đc. ai đâu thông báo dài đâu
          child: Column(//Mỗi một phần tử đc gọi là widget, column là xếp theo chiều dọc.
              children: <Widget>[// mấy dòng này trở lên là phải có à.
              SizedBox(height: 150.0,),// này chiều cao của cái hộp à hay cách ra. cách ra đó.ờ
              Container(
                width: 150,//chiều rộng ảnh
                height: 150,//chiều dài ảnh, ok.ok
                child: Image(image: AssetImage('assets/3.png') ,)//chèn ảnh vào. Chịu khó tải hình về r đưa nó vào. Lỡ rớt mạng là lỗi mẹ cái app lun.ừm
              ),
              SizedBox(height: 15.0,),//cách khoảng
              //Dòng chữ thông báo 
              Container(

                child: Text('Bạn đã đăng ký thành công',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

              ),
              SizedBox(height: 15.0,),
              Container(
                width: 365.0,
                child: RaisedButton(
                  color: Color(0xFFFFFF630),
                  textColor: Colors.white,
                  onPressed: _onHomeClick,
                  child: Text('TIẾP TỤC',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0)
                    )
                  ),
                ),
              ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 62, 0, 0),
                  width:  double.infinity,
                  child: Image(image: AssetImage('assets/2.png'),),
                ),
            ],
          ),
        ),
      ),
    );
  }
  //Tới đây ok chưa. chờ t tí
  void _onHomeClick() {
    Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Home()));
  }
}
