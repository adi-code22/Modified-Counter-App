//import 'dart:html';

import 'package:bloc_counterapp/core/util/constants.dart';
import 'package:bloc_counterapp/logic/cubit/firestore_cubit/cubit/firestore_cubit.dart';
//import 'package:bloc_counterapp/logic/cubit/theme_cubit/theme_cubit.dart';

import 'package:bloc_counterapp/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:file1_contentup_public/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:simple_animations/simple_animations.dart';
import 'package:sizer/sizer.dart';
//import 'package:file1_contentup_public/util/constants.dart';

class Ankur extends StatefulWidget {
  @override
  _AnkurState createState() => _AnkurState();
}

class _AnkurState extends State<Ankur> {
  TabController tabController;
  String dropdownValue = 'ANKUR';
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Image(
            image: new AssetImage(
              Constants.kAccountIcon,
            ),
            color: null,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
          title: TextField(
            style: new TextStyle(
              color: Constants.kWhite,
            ),
            decoration: new InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                filled: true,
                hintText: "Search",
                hintStyle:
                    new TextStyle(color: Constants.kGrey, fontSize: 17.0)),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).hintColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
            )
            // new Image(
            //   image: new AssetImage(
            //     Constants.kSearchIcon,
            //   ),
            //   color: null,
            //   fit: BoxFit.scaleDown,
            //   alignment: Alignment.center,
            // ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(0, 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100.0.w,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 15.0.sp, fontWeight: FontWeight.bold),
                      controller: tabController,
                      indicatorColor: Colors.transparent,
                      labelColor: Constants.kYellow,
                      unselectedLabelColor: Theme.of(context).hintColor,
                      tabs: [
                        Container(
                          height: 50,
                          child: Tab(
                            text: Constants.kExploreTab,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: Tab(
                            text: Constants.kFeedTab,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: Tab(
                            text: Constants.kShopTab,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: Tab(
                            icon: Image.asset(Constants.kHornIcon),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: Image.asset(Constants.kHornIcon),
                //   iconSize: 70,
                // ),
              ],
            ),
          ),
        ),
        body: StreamBuilder<DocumentSnapshot>(
            stream: context.select(
                (FirestoreCubit firestoreCubit) => firestoreCubit.state.stream),
            builder: (context, snapshot) {
              return Stack(
                children: [
                  Background(),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Container(
                              color: Colors.transparent,
                              height: 30.0.h,
                              width: 100.0.w,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  // CircleAvatar(),
                                  Positioned(
                                      top: 0,
                                      left: 00,
                                      child: Container(
                                        height: 17.0.h,
                                        width: 100.0.w,
                                        decoration: new BoxDecoration(
                                          border: new Border.all(
                                              color: Colors.white, width: 1),
                                          // color: Colors.blue,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/61.png'),
                                              fit: BoxFit.fill),
                                        ),
                                        // child: Image(
                                        //   image: AssetImage(''),
                                        // ),
                                      )),
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      height: 30.0.h,
                                      width: 45.0.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              new Radius.circular(70.0)),
                                          image: new DecorationImage(
                                            image: AssetImage(
                                              'assets/images/15.png',
                                            ),
                                          )),
                                      // child: Image(
                                      //   image: AssetImage(
                                      //     '',
                                      //   ),
                                      // ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.5.h,
                                    left: 45.0.w,
                                    child: Text(
                                      "Ankur's\nCommunity",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 26.0.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    top: 18.0.h,
                                    left: 50.0.w,
                                    child: DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: Icon(Icons.arrow_downward),
                                      iconSize: 20.0.sp,
                                      elevation: 16,
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor,
                                          fontSize: 15.0.sp,
                                          fontWeight: FontWeight.bold),
                                      underline: Container(
                                        height: 2,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                          if (dropdownValue == 'ANKUR') {
                                            Navigator.pushReplacementNamed(
                                                context, 'ankur');
                                          }
                                          if (dropdownValue == 'KABITA') {
                                            Navigator.pushReplacementNamed(
                                                context, 'kabita');
                                          }
                                          if (dropdownValue == 'SANAM') {
                                            Navigator.pushReplacementNamed(
                                                context, 'sanam');
                                          }
                                          if (dropdownValue == 'SHILPA') {
                                            Navigator.pushReplacementNamed(
                                                context, 'shilpa');
                                          }
                                          if (dropdownValue == 'SHWETABH') {
                                            Navigator.pushReplacementNamed(
                                                context, 'shwetabh');
                                          }
                                          if (dropdownValue == 'SORABH') {
                                            Navigator.pushReplacementNamed(
                                                context, 'sorabh');
                                          }
                                          if (dropdownValue == 'VAIBHAV') {
                                            Navigator.pushReplacementNamed(
                                                context, 'vaibhav');
                                          }
                                        });
                                      },
                                      items: <String>[
                                        'ANKUR',
                                        'KABITA',
                                        'SANAM',
                                        'SHILPA',
                                        'SHWETABH',
                                        'SORABH',
                                        'VAIBHAV'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          decoration: new BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Theme.of(context).hintColor)),
                          // height: 175,
                          width: 250.0.sp,
                          // height: 23.0.h,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 8.0.h,
                                    color: Colors.transparent,
                                    child: Image(
                                        image:
                                            AssetImage('assets/images/29.png'),
                                        fit: BoxFit.fill),
                                  ),
                                  // SizedBox(
                                  //   width: 10,
                                  // ),
                                  Text(
                                    "HEY SHIKHA!",
                                    style: TextStyle(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 12.0.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                // height: 50,
                                width: 65.0.w,
                                child: TextField(
                                  decoration: new InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText:
                                        "CONTRIBUTING TO THE COMMUNITY TODAY?",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          icon: Icon(
                                            Icons.camera_alt,
                                            size: 20.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                      // SizedBox(
                                      //   width: 2.0.w,
                                      // ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.video_call_sharp,
                                            size: 20.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                      // SizedBox(
                                      //   width: 2.0.w,
                                      // ),
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 10.0.sp,
                                        backgroundImage:
                                            AssetImage(Constants.kMicrophone),
                                      ),
                                      // SizedBox(
                                      //   width: 90.0.sp,
                                      // ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              // padding:
                                              //     EdgeInsets.fromLTRB(35, 20, 35, 20),
                                              primary: Color(0xFF858585)),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, 'contentex');
                                          },
                                          child: Text("POST"))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Container(
                        //   height: 90,
                        //   width: 3000,
                        //   decoration: new BoxDecoration(
                        //     border: new Border.all(color: Colors.white, width: 1),
                        //     // color: Colors.blue,
                        //     image: DecorationImage(
                        //       image: AssetImage('assets/images/61.png'),
                        //     ),
                        //   ),
                        //   // child: Image(
                        //   //   image: AssetImage(''),
                        //   // ),
                        // ),
                        Container(
                          decoration: new BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Theme.of(context).hintColor)),
                          // height: 220,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10.0.h,
                                    //width: 60,
                                    color: Colors.transparent,
                                    child: Image(
                                        image:
                                            AssetImage('assets/images/6.png'),
                                        fit: BoxFit.fill),
                                  ),
                                  // SizedBox(
                                  //   width: 10,
                                  // ),
                                  Text(
                                    "ANKUR",
                                    style: TextStyle(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 20.0.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                width: 250.0.sp,
                                child: Text(
                                  snapshot.hasData
                                      ? snapshot.data["Ankur"]
                                      : "No Data",
                                  style: TextStyle(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 10.0.sp),
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 150.0.sp,
                                      // width: 300,
                                      color: Colors.transparent,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/52.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 12.0.sp,
                                        backgroundImage:
                                            AssetImage(Constants.kloveIcon),
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.comment,
                                            size: 12.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                      // SizedBox(
                                      //   width: 230,
                                      // ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.share,
                                            size: 12.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: new BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Theme.of(context).hintColor)),
                          // height: 220,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 10.0.h,
                                    //width: 60,
                                    color: Colors.transparent,
                                    child: Image(
                                        image:
                                            AssetImage('assets/images/100.png'),
                                        fit: BoxFit.fill),
                                  ),
                                  // SizedBox(
                                  //   width: 10,
                                  // ),
                                  Text(
                                    "BHASKAR S",
                                    style: TextStyle(
                                        color: Theme.of(context).hintColor,
                                        fontSize: 20.0.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                width: 250.0.sp,
                                child: Text(
                                  snapshot.hasData
                                      ? snapshot.data["Bhaskar"]
                                      : "No Data",
                                  style: TextStyle(
                                      color: Theme.of(context).hintColor,
                                      fontSize: 10.0.sp),
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //   height: 150.0.sp,
                                    //   // width: 300,
                                    //   color: Colors.transparent,
                                    //   child: Image(
                                    //       image: AssetImage(
                                    //           'assets/images/52.png'),
                                    //       fit: BoxFit.cover),
                                    // ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 12.0.sp,
                                        backgroundImage:
                                            AssetImage(Constants.kloveIcon),
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.comment,
                                            size: 12.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                      // SizedBox(
                                      //   width: 230,
                                      // ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.share,
                                            size: 12.0.sp,
                                            color: Theme.of(context).hintColor,
                                          ),
                                          onPressed: () {}),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
//"I AM THRILLED TO BE LAUNCHING MY PODCAST - WOICE WITH WARIKOO IN THIS PODCAST. I TALK ABOUT ENTREPRENEURSHIP, CAREERS, AND PERSONAL GROWTH.\nIT IS PERSONAL, IT IS WEEKLY AND IT IS FREE",
