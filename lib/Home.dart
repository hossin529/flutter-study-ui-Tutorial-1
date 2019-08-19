import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 21,
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(36),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color(0xFF8dc44a).withOpacity(.5), width: 6),
                    ),
                    child: Image.asset(
                      'assets/smile.png',
                      width: ScreenUtil().setWidth(222),
                      height: ScreenUtil().setHeight(222),
                    )),
                RichText(
                  text: TextSpan(
                    text: 'WELCOME TO \n',
                    style: TextStyle(fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'H.Study',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: ListView(
              children: <Widget>[
                item(Icons.add_circle, 'Create', ' test desc test desc'),
                Dismissible(
                    key: Key('Study'),
                    onDismissed: (item) {},
                    direction: DismissDirection.endToStart,
                    background: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 17),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFF8dc44a),
                            borderRadius: BorderRadius.circular(21),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.4),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 2))
                            ]),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete_outline,
                            color: Colors.white,
                          ),
                        )),
                    child: item(Icons.play_circle_outline, 'Study',
                        ' test desc test desc')),
                item(Icons.content_copy, 'Daily Notes', ' test desc test desc'),
                item(Icons.person_outline, 'Profile', ' test desc test desc'),
              ],
            ),
          )
          //
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
              color: Color(0xFF8dc44a),
              borderRadius: BorderRadius.circular(54)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.content_copy, size: 54, color: Colors.white),
              Icon(
                Icons.play_circle_filled,
                size: 54,
                color: Colors.white,
              ),
              Icon(Icons.person_outline, size: 54, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

Widget item(IconData icon, String title, desc) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 32, vertical: 17),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(21),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.4),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2))
        ]),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Icon(
          icon,
          size: 75,
          color: Colors.green,
        )),
        Expanded(
          flex: 3,
          child: RichText(
            text: TextSpan(
              text: '$title \n',
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: desc,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.black38)),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
