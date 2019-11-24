import 'package:flutter_hutech_food/src/resources/register.dart';// set up thư viện trang tiếp theo, ok ok
import 'package:flutter_hutech_food/src/resources/login.dart';
import 'package:flutter/material.dart';// thư viện này lun phải import

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 25),//cách lề trên 25, đó thấy chưa ok
          constraints: BoxConstraints.expand(),//chỗ này t chưa rõ
          child: SingleChildScrollView( // nếu trang dài qá thì sẽ tự sinh thanh kéo, như thanh này
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,// nó sẽ kéo hết mức, kiểu như tràn màn hình, mà t thấy nó chưa tràn như t muốn
                  height: 550,//chiều dài tấm hình, đó
                  child: Image(image: AssetImage('assets/1.png') ,)// chỗ này là import hình vào. Dòng này m hiểu ko . hình này offline đún ko, đúng r 
                  //đầu tiên tải hình về
                  //phải tạo thư mục assets
                  //kéo hình vàook
                  //xong r làm theo t
                  //khai báo xong thì mới xài đc 

                ),
                SizedBox(height: 5.0,),//ô thấy giữa tấm hình vs cái button Đăng ký có khoảng trống ko,  nó đó ừm
                //chút mấy cái comment này m đừng xóa nha. xong gửi t bài này luôn, ok
                Container(
                  width: 365.0,// chiều rộng của button. Ko khai báo là nó tự ôm sát chữ lun. ok
                  child: RaisedButton(
                    color: Color(0xFFFFFF630),//màu button, lấy 6 ký tự cuối 'FFF630', mấy cái ký tự đầu thì giữ nguyên.ok
                    textColor: Colors.white,//màu chữ
                    //có 2 cách set up màu, đó. Tới đây có j ko hiểu ko. ừm t hiểu rồi, ok
                    onPressed: _onRegisterClick,// chỗ này là set up sự kiện chạm tay vào button
                    //khi chạm vào button Đăng ký, thì app sẽ vào _onRegisterClick(code ở cuối trang)
                    child: Text('ĐĂNG KÝ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    //set up chữ trong button, m đọc hiểu dòng này ko. ok hiểu,ok  
                    //bắt đầu tạo kiểu cho button. Nếu ko có mấy dòng bên dưới thì button sẽ như thế này, nó vuông 4 cạnh                  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(//chỉnh sửa tất cả - hiểu như là 4 cạnh
                        Radius.circular(20.0)// bo tròn 4 cạnh, số càng lớn thì càng bo tròn 4 cạnh, có giới hạn
                      )
                    ),
                  ),
                ),
                SizedBox(height: 1.0,),// dòng này thì m hiểu r nên cho qa ok
                //button Đăng nhập là tương tự
                //trang này m còn j ko hiểu ko. ok
                Container(
                  width: 365.0,
                  child: RaisedButton(
                    color: Color(0xFF2B60DE),
                    textColor: Colors.white,
                    onPressed: _onLoginClick,// chỗ này thì chưa set up trang tiếp theo nên mặc định vậy
                    child: Text('ĐĂNG NHẬP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0)
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onRegisterClick() {
    Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Register()));// hiểu đơn giản là nó sẽ chuyển sang trnag khác, tùy m set up trang nào nữa
          // chỗ này t set up trang đăng ký. 'Register' tên trang tiếp theo. ok t hiểu rồi,ok tiếp
  }
  void _onLoginClick() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));// hiểu đơn giản là nó sẽ chuyển sang trnag khác, tùy m set up trang nào nữa
    // chỗ này t set up trang đăng ký. 'Register' tên trang tiếp theo. ok t hiểu rồi,ok tiếp
  }
}


