import 'package:Flutter/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'myorder_detail.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  Widget closeApp(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(
      context,
      width: 411.42857142857144,
      height: 774.8571428571429,
      allowFontScaling: true,
    );
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyOrderDetailPage()),
            );
          },
          child: Container(
            width: ScreenUtil().setWidth(330),
            height: ScreenUtil().setHeight(155),
            margin: EdgeInsets.only(bottom:20.0),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '#'+'200506001',
                      style: TextStyle(fontFamily: 'Gilroy', fontSize: ScreenUtil().setSp(27,allowFontScalingSelf: true)),
                    ),
                    Text(
                      '43 Nose Pins',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: ScreenUtil().setSp(13,allowFontScalingSelf: true),
                        fontFamily: 'Varela',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(38.75),
                  width: ScreenUtil().setWidth(370),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Order Status',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Varela',
                              fontSize: ScreenUtil().setSp(13,allowFontScalingSelf: true),
                            ),
                          ),
                          Text(
                            'Received at Dock',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Varela',
                              fontSize: ScreenUtil().setSp(15,allowFontScalingSelf: true),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                        child: VerticalDivider(
                          color: Colors.blue,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Approx Arrival Date',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Varela',
                              fontSize: ScreenUtil().setSp(13,allowFontScalingSelf: true),
                            ),
                          ),
                          SizedBox(
                            // height: size.height * 0.07,
                            width: size.width * 0.4,
                            child: Text(
                              '14.05.2020',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Varela',
                                fontSize: ScreenUtil().setSp(15,allowFontScalingSelf: true),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    ScreenUtil.init(
      context,
      width: 411.42857142857144,
      height: 774.8571428571429,
      allowFontScaling: true,
    );
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                print(MediaQuery.of(context).padding.top);
                                Navigator.of(context).pop();
                              },
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            'My Orders',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(25,allowFontScalingSelf: true),
                              fontFamily: 'Gilroy',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: ScreenUtil().setHeight(116.25),
              left: 0.0,
              child: Container(
                // color: Colors.amber,
                width: ScreenUtil().setWidth(411),
                height: ScreenUtil().setHeight(655),
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.cyan,
                      labelColor: Colors.white,
                      isScrollable: true,
                      // labelPadding: EdgeInsets.only(right: size.width / 12),
                      unselectedLabelColor: Color(0xFFCDCDCD),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.cyan,
                      ),
                      // indicatorPadding: EdgeInsets.all(10.0),
                      //indicator: UnderlineTabIndicator(insets:EdgeI`nsets.only(right:20.0),borderSide:BorderSide(color:Colors.pink),),
                      tabs: [
                        Tab(
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: ScreenUtil().setSp(19,allowFontScalingSelf: true),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Completed',
                            style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: ScreenUtil().setSp(19,allowFontScalingSelf: true),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Expanded(
                      // height: 200.0,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          closeApp(context),
                          closeApp(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
