import 'package:Flutter/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderDetailPage extends StatefulWidget {
  @override
  _MyOrderDetailPageState createState() => _MyOrderDetailPageState();
}

class _MyOrderDetailPageState extends State<MyOrderDetailPage> {
  List<String> str = [
    'Processing',
    'Manufacturing',
    'Certification',
    'Final Inspection',
    'Delivery',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(
      context,
      width: 411.42857142857144,
      height: 774.8571428571429,
      allowFontScaling: true,
    );
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        print(MediaQuery.of(context).padding.top);

                        Navigator.of(context).pop();
                      },
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 10.0, 10.0, 10.0),
                  child: Text(
                    '#200506001',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:
                          ScreenUtil().setSp(30, allowFontScalingSelf: true),
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: ScreenUtil().setHeight(620),
                          // color: Colors.amber,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: ScreenUtil().setHeight(125),
                                width: ScreenUtil().setWidth(411),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0.0,
                                      left: ScreenUtil().setWidth(60),
                                      child: Container(
                                        width: ScreenUtil().setWidth(330),
                                        height: ScreenUtil().setHeight(100),
                                        // color: Colors.green,
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              str[index],
                                              style: TextStyle(
                                                  fontFamily: 'Varela',
                                                  fontSize: ScreenUtil().setSp(
                                                      16,
                                                      allowFontScalingSelf:
                                                          true),
                                                  color: Colors.black),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                // border: Border.all(
                                                //   color: Colors.grey,
                                                //   width: 1.0,
                                                // ),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                // color: Colors.grey[100],
                                              ),
                                              margin:
                                                  EdgeInsets.only(top: 10.0),
                                              padding: EdgeInsets.all(7.0),
                                              width: ScreenUtil().setWidth(308.25),
                                              child: Text(
                                                'Each and every diamond is checked thoroughly to deliver quality products to our client.',
                                                style: TextStyle(
                                                  fontSize: ScreenUtil().setSp(
                                                      13,
                                                      allowFontScalingSelf:
                                                          true),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0.0,
                                      // bottom: 0.0,
                                      left: ScreenUtil().setWidth(35),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          index != 0
                                              ? Container(
                                                  height: ScreenUtil().setWidth(20),
                                                  width: ScreenUtil().setWidth(20),
                                                  margin: index == 4
                                                      ? EdgeInsets.only(
                                                          left: 3.0)
                                                      : null,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: kPrimaryColor,
                                                      width: 1.0,
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                )
                                              : Icon(
                                                  Icons.check_circle,
                                                  color: kPrimaryColor,
                                                ),
                                          index != 4
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 8.0,
                                                    top: 6.0,
                                                    bottom: 6.0,
                                                  ),
                                                  child: RotatedBox(
                                                    quarterTurns: 1,
                                                    child: Text(
                                                      '................',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        letterSpacing: 2.0,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : SizedBox(
                                                  height: 0.0,
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: 5,
                          ),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(300),
                          margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                height: ScreenUtil().setHeight(130),
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      // color: Colors.black,
                                      child: Image.asset(
                                        'assets/images/nosepin4.png',
                                        fit: BoxFit.fill,
                                        height: ScreenUtil().setHeight(77.5),
                                        width: ScreenUtil().setWidth(82.2),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: VerticalDivider(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'StyleNumber: GS0021',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                        Text(
                                          'Build: Taar',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                        Text(
                                          'Color: Rose',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                        Text(
                                          'Diamond Quality: SI_HI_BFGD',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                        Text(
                                          'Certification: None',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                        Text(
                                          'Quantity: 4',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(13,
                                                allowFontScalingSelf: true),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
