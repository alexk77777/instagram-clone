import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'instagram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Text(
                  '사진과 동영상을 보려면 팔로우 하세요.',
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                ),
                SizedBox(
                  width: 260,
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'data:image/jpeg;base64,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'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                        ),
                        Text(
                          '이메일주소',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '이름',
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRkSUa1VRQosIiSOOIbXvgBecPmPZrBvSbdQ&usqp=CAU',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRkSUa1VRQosIiSOOIbXvgBecPmPZrBvSbdQ&usqp=CAU',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRkSUa1VRQosIiSOOIbXvgBecPmPZrBvSbdQ&usqp=CAU',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                        ),
                        Text(
                          'Facebook 친구',
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                        ),
                        RaisedButton(
                            child: Text('팔로우'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () {}),
                        Padding(
                          padding: EdgeInsets.all(16),
                        ),
                      ],
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
}
