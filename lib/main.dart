import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> title = [
    "Prof Dr. Lakshmi prasad",
    "Dr jane Foster",
    "Tommy Smith"
  ];
  List<String> subtitle = [
    "Heart surgeon - Indian",
    "Heart surgeon - Indian",
    "Heart surgeon - Indian",
  ];
  List<String> time = ["10.40Am -2,40Pm", "10.40Am -2,40Pm", "10.40Am -2,40Pm"];
  List<String> price = ["Rs 1000/-", "free", "Rs 550/-"];
  List<Color> clr = [
    Colors.brown,
    Colors.grey,
    Colors.grey,
  ];
  List<String> img = ["img/doc4.png", "img/doc2.png", "img/doc3.png"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xfffcfcfc),
            body: SingleChildScrollView(
                child: SafeArea(
                    child: Container(
              margin: EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_open,
                      size: 34,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff9fd5dd),
                      radius: 22,
                      backgroundImage: AssetImage("img/bot6.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Jone",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Find your specialist",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Search Doctor",
                          hintStyle: TextStyle(
                            color: Colors.blueGrey[50],
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30,
                            color: Colors.blueGrey[50],
                          ),
                          filled: true,
                          isDense: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ))),
                    ),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xfffcfcfc),
                        radius: 28,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff9dd6dd),
                          radius: 25,
                          child: Icon(
                            Icons.add_road,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff8db4db),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff8db4db),
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/hrt.png",
                                height: 50,
                                width: 50,
                              ),
                              Text("Cardiology")
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff94d3da),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff94d3da),
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/dig.png",
                                height: 50,
                                width: 50,
                              ),
                              Text("Gastrology")
                            ],
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xfff2c7a7),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xfff2c7a7),
                                    offset: Offset(1, 1),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "img/mind.png",
                                height: 50,
                                width: 50,
                              ),
                              Text("Neurology")
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Doctor",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                ListView.builder(
                    itemCount: price.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TopDoctorListClass(
                        title: title[index],
                        subtitle: subtitle[index],
                        price: price[index],
                        time: time[index],
                        clr: clr[index],
                        img: img[index],
                      );
                    })
              ]),
            )))));
  }
}

class TopDoctorListClass extends StatefulWidget {
  TopDoctorListClass(
      {this.title, this.img, this.subtitle, this.clr, this.time, this.price});

  final String img;
  final String title;
  final String subtitle;
  final String time;
  final String price;
  final Color clr;

  @override
  _TopDoctorListClassState createState() => _TopDoctorListClassState();
}

class _TopDoctorListClassState extends State<TopDoctorListClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 130,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.blueGrey[50],
                    offset: Offset(1, 1),
                    blurRadius: 5)
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: widget.clr,
                backgroundImage: AssetImage(widget.img),
                radius: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timelapse_outlined,
                          size: 13,
                        ),
                        Text(
                          widget.time,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                          widget.price,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )),
                         RaisedButton(onPressed: (){

                         },
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(20)
                           ),
                            elevation: 1, child: Text("Appointment" , style: TextStyle(color: Colors.white),),
                        color: Color(0xffabdcdf),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
