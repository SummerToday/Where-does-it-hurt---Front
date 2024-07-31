import 'package:flutter/material.dart';
import 'package:project/screens/noticeInfo.dart';
import 'dart:convert'; //이거 추가
import 'package:http/http.dart' as http; //이거 추가

class NoticePage extends StatefulWidget {
  const NoticePage({
    Key? key,
  }) : super(key: key);

  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  static String _url = 'http://localhost:3000/notice';
  Uri uri = Uri.parse(_url);
  String? Showtitle;
  String? Showcontent;
  void fetchData() async {
    //api코드와 해당 주소를 붙여서 접속한다 여기서 async와 await함수로 인터넷 연결을 대기한다.
    var response = await http.get(uri);
    print(response.statusCode);
    //statusCode가 아니면 오류코드를 뛰운다
    if (response.statusCode == 200) {
      String jsonData = response.body;
      //jsondata에서 weather의0번째의 description 항목에 있는 데이터를 가져온다.
      //크롬에서 jsonviewer 확장프로그램을 설치하면 더 빠르게 데이터의 가공을 가시적으로 볼 수 있다
      var pasringData = json.decode(jsonData);
      var Mytitle = pasringData['title'];
      var Mycontent = pasringData['content'];
      Showtitle = Mytitle;
      Showcontent = Mycontent;
    }
  }

  // 이거 추가
  @override
  Widget build(BuildContext context) {
    List<TextButton> buttonList = [
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
      TextButton.icon(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => noticeInfo(
                  notice: Showcontent.toString(),
                  title: Showtitle.toString())));
        },
        icon: Icon(Icons.circle_outlined, size: 20.0),
        label: Text(
          Showcontent.toString(),
          style: TextStyle(fontSize: 20.0),
        ),
        style: TextButton.styleFrom(primary: Colors.black),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('공지 사항'),
      ),
      body: ListView.separated(
          scrollDirection:
              Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열
          separatorBuilder: (BuildContext context, int index) => const Divider(
                color: Colors.black,
              ), //separatorBuilder : item과 item 사이에 그려질 위젯 (개수는 itemCount -1 이 된다)
          itemCount: 8, //리스트의 개수
          itemBuilder: (BuildContext context, int index) {
            //리스트의 반목문 항목 형성
            return Container(
              height: 70,
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonList[index],
                ],
              ),
            );
          }),
    );
  }
}
