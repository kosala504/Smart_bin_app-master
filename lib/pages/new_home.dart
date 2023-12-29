//import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:my_first_app/pages/settings.dart';
//import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget
{
  var height, width;

  List imgData =[
    "assets/images/user profile.jpeg",
    "assets/images/bin button.png",
    "assets/images/rewards.avif",
    "assets/images/location.jpeg",
    "assets/images/QR.png",
    "assets/images/feedback-icon.jpeg"
  ];

  List titles =[
    "Profile",
    "Bin Details",
    "Rewards",
    "Location",
    "Scan QR",
    "Feedback"
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 128, 0, 0),
          
          width: width,     
          child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  height: height * 0.23,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 35,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.sort,
                          color:  Color.fromARGB(255, 249, 193, 193),
                          size: 40,
                          ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
              // Navigate to the settings page here
                         Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context) => SettingsPage()),
                          );
                        },
                        child: Container(
                              height: 35,
                              width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 255, 255),
                            image: DecorationImage(
                              image: AssetImage("assets/images/settings.png",
                              ))),
                        
                        ),
                      ),
                      ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,                    
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Clean Enviro",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Last Update: 16 Dec 2023",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                      ),
                  ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 249, 193, 193),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    //height: height,
                    width: width,
                    padding: EdgeInsets.only(bottom: 25),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                            childAspectRatio: 1.1,
                                mainAxisSpacing: 25,
                      ),
                    shrinkWrap: true,                
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                            itemBuilder: (context, index) {
                                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 1,
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          imgData[index],
                          width: 100,
                          ),
                          Text(
                            titles[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ],
                    ),
                  ),
                                );
                            },
                    ),
                  ),
                ),
              ],
              ),
        ),
      ),
      
      );
  }
}
