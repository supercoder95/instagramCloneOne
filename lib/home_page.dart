import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold
        ),
      )
      ),
      body: _buildBody(

      ),
    );
  }

  Widget _buildBody(){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Instagram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 24.0),
                ),
                Padding(padding: EdgeInsets.all(8.0),),
                Text('사진과 동영상을 보려면 팔로우 하세요'
                ),
                Padding(padding: EdgeInsets.all(16.0),),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(8.0),),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://i.ytimg.com/vi/vIYsL8C-va8/maxresdefault.jpg'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0),),
                        Text('supercoder@kakao.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('이름'),
                        Padding(padding: EdgeInsets.all(8.0),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://tv-date.com/img/Wataten-An-Angel-Flew-Down-to-Me.jpg',
                              fit: BoxFit.cover,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(1.0),),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://i.pinimg.com/originals/74/9a/ba/749aba74870ce0f94326b5a78b4b80f2.jpg',
                              fit: BoxFit.cover,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(1.0),),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network('https://yurireviewsandmore.files.wordpress.com/2019/04/wataten-4.jpg',
                              fit: BoxFit.cover,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(1.0),),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4.0),),
                        Text('페이스북 친구'),
                        Padding(padding: EdgeInsets.all(4.0),),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: (){

                          },
                        ),
                        Padding(padding: EdgeInsets.all(4.0),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
