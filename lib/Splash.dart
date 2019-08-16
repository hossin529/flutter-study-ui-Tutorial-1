import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 29,
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(36),
              width: ScreenUtil().setHeight(222),
              height: ScreenUtil().setWidth(222),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                    color: Color(0xFF8dc44a).withOpacity(.5), width: 6),
              ),
              child: Image.asset('assets/smile.png'),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                     padding: const EdgeInsets.only(top: 60,left: 43),
                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text('New happy \nstudy for\n your life ',style: TextStyle(color: Color(0xFF8dc44a),fontSize: 45,fontWeight: FontWeight.bold),),
                        SizedBox(height: 12,),
                        Text('A fun way to learn english',style: TextStyle(color: Color(0xFF8dc44a),fontSize: 21),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 23,horizontal: 48),
                        decoration: BoxDecoration(
                          color: Color(0xFF8dc44a),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(36)),
                        ),
                        child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
          //
        ],
      ),
    );
  }
}
