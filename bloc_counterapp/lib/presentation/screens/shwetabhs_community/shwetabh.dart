import 'package:bloc_counterapp/core/util/constants.dart';
import 'package:flutter/material.dart';

class Shwetabh extends StatefulWidget {
  @override
  _ShwetabhState createState() => _ShwetabhState();
}

class _ShwetabhState extends State<Shwetabh> {
  TabController tabController;
  String dropdownValue = 'SHWETABH';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Constants.kBlack,
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
              new Image(
                image: new AssetImage(
                  Constants.kSearchIcon,
                ),
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size(0, 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: TabBar(
                      labelStyle: TextStyle(fontSize: 13.0),
                      controller: tabController,
                      indicatorColor: Colors.transparent,
                      labelColor: Constants.kYellow,
                      unselectedLabelColor: Colors.white.withOpacity(0.3),
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
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(Constants.kHornIcon),
                    iconSize: 70,
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Container(
                      color: Colors.black,
                      height: 200,
                      width: 2000,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          // CircleAvatar(),
                          Positioned(
                              top: 0,
                              left: 00,
                              child: Container(
                                height: 90,
                                width: 400,
                                decoration: new BoxDecoration(
                                  border: new Border.all(
                                      color: Colors.white, width: 1),
                                  // color: Colors.blue,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/61.png'),
                                      fit: BoxFit.fill),
                                ),
                                // child: Image(
                                //   image: AssetImage(''),
                                // ),
                              )),
                          Positioned(
                            left: 0,
                            child: Container(
                              height: 200,
                              width: 175,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      new Radius.circular(70.0)),
                                  image: new DecorationImage(
                                    image: AssetImage(
                                      'assets/images/108.png',
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
                            top: 3,
                            left: 160,
                            child: Text(
                              "Shwetabh's\nCommunity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 180,
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
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
                              ].map<DropdownMenuItem<String>>((String value) {
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
                      color: Colors.black,
                      border: Border.all(color: Colors.white)),
                  // height: 175,
                  width: 370,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            color: Colors.black,
                            child: Image(
                                image: AssetImage('assets/images/29.png'),
                                fit: BoxFit.fill),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Text(
                            "HEY SHIKHA!",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        // height: 50,
                        width: 320,
                        child: TextField(
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "CONTRIBUTING TO THE COMMUNITY TODAY?",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.video_call_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,
                            backgroundImage: AssetImage(Constants.kMicrophone),
                          ),
                          SizedBox(
                            width: 150,
                          ),
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white)),
                  // height: 220,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            //width: 60,
                            color: Colors.black,
                            child: Image(
                                image: AssetImage('assets/images/110.png'),
                                fit: BoxFit.fill),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Text(
                            "PREM K",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: 350,
                        child: Text(
                          "I AM THRILLED TO BE LAUNCHING MY PODCAST - WOICE WITH WARIKOO IN THIS PODCAST. I TALK ABOUT ENTREPRENEURSHIP, CAREERS, AND PERSONAL GROWTH.\nIT IS PERSONAL, IT IS WEEKLY AND IT IS FREE",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,
                            backgroundImage: AssetImage(Constants.kloveIcon),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.comment,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 230,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white)),
                  // height: 220,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            // width: 60,
                            color: Colors.black,
                            child: Image(
                                image: AssetImage('assets/images/109.png'),
                                fit: BoxFit.fill),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Text(
                            "KESHAV S",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: 350,
                        child: Text(
                          "HEY EVERYONE, I AM A FRESH GRADUATE FROM KERALA. I ASPIRE TO START MY OWN VENTURE IN THE ELECTRONIC VEHICLE SPACE. HAVE BEEN WORKING ON SOME DESIGNS & OTHER PROTOTYPES (PATENT PENDING).\n\nANY GUIDANCE WITH REGARDS ON HOW TO PROCEED WITH DRIVES PERTAINING TO PROOF OF CONCEPT ARE MUCH APPRECIATED. ALSO, ANY TIPS RELATED TO MY INDUSTRY OR ENTREPRENEURSHIP IN GENERAL.",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Container(
                          //   height: 200,
                          //   // width: 300,
                          //   color: Colors.black,
                          //   child: Image(
                          //       image: AssetImage('assets/images/52.png'),
                          //       fit: BoxFit.cover),
                          // ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,
                            backgroundImage: AssetImage(Constants.kloveIcon),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.comment,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 230,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ],
                      )
                    ],
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
