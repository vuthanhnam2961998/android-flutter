import 'package:flutter_hutech_food/src/resources/successfulregister.dart';// khai báo đường dẫn trang tiếp theo
import 'package:flutter/material.dart';// bài cũ

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //set up thanh appbar
      //thanh màu vàng trên cùng là AppBar
      //Còn lại là Body
      appBar: AppBar(
        centerTitle: true ,//cho chữ ĐĂNG KÝ ra giữa
        title: Text('ĐĂNG KÝ',style: TextStyle(fontSize: 25)), // set up chữ
        backgroundColor: Color(0xFFFFFF630),// set up màu nền.
        //set up icon BACK
        leading: IconButton(
          icon:Icon(Icons.arrow_back, size: 30,),
          onPressed:() => Navigator.pop(context, false),// context với false là sao, cái này t bó tay :v. ừm :(. nhưng xài đc là ok r.ok
        )
        //tới đây hiểu ko m
      ),
      body: Container(
        //padding: EdgeInsets.fromLTRB(left, top, right, bottom),f
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),//canh lề 4 phương, chỗ này t cho trái vào 20 và phải vào 20
        constraints: BoxConstraints.expand(),//dòng này là sao m :(. m trỏ chuột vào nó chú thích cho m r. T bk xài chứ méo hiểu nó ghi j. Ngu Tiếng Anh vc ừm
        color: Colors.white,//màu nền
        child: SingleChildScrollView(//cho phép cuộn trang
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),//Canh lề, tạm thời là vậy. Chứ t bỏ nó ko đc :(
                child: TextField(//TextField là cho phép gõ chữ
                  style: TextStyle(fontSize: 18, color: Colors.black),//set up chữ lúc chưa chọn
                  decoration: InputDecoration(//chỗ này là trang trí cái khung
                    labelText: "Tên người dùng",//labelText tương tự như Text nhưng nó khác chút, đó
                    labelStyle:TextStyle(//set up chữ khi đã stick chọn vào
                      color: Color(0xff888888),//màu chữ
                      fontSize: 15//kích thước chữ
                    )
                  ),
                ),
              ),
              //làm mấy cái kia tương tự
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Mã số sinh viên",
                    labelStyle:TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Địa chỉ Email",
                    labelStyle:TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Số điện thoại",
                    labelStyle:TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,//dòng này để ẩn ký tự khi gõ, ok chưa.ok
                  decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    labelStyle:TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Nhập lại mật khẩu",
                    labelStyle:TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15
                    )
                  ),
                ),
              ),
              //tạo button tương tự
              Container(
                width: 365.0,
                child: RaisedButton(

                  color: Color(0xFFFFFF630),
                  textColor: Colors.white,
                  onPressed: _onRegisterClick,//sự kiện chạm vào button
                  child: Text('ĐĂNG KÝ',style: TextStyle(fontSize: 20)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0)
                    )
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Image(image: AssetImage('assets/2.png') ,)
              )
            ],
          ),
        ),
      ),
    );
  }
  //phải để trong class chính nha
  //có j ko hiểu ko m. t cũng hiểu sơ sơ rồi. Cái này t cũng như m vậy thôi. Lúc đầu cũng hiểu sơ sơ, r bay dô code. t thấy m quá giỏi đó chứ. t thì thấy t vẫn ngu người ra chứ giỏi j. SAO . rồi m gửi qua đi tối về t nghiên cứu. phải chạy app để xem nó thay đổi ntn khi m sửa code. vậy hiểu nhanh hơn.ok. Tiếp tục
  void _onRegisterClick() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuccessfulRegister()));
  }
}




