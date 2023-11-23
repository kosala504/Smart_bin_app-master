//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:timeline_tile/timeline_tile.dart';

//import 'Home.dart';

class Profile extends StatefulWidget 
{
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile>createState() => _ProfileState();
}

class _ProfileState extends State<Profile> 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold
        (
appBar: AppBar
      (
        actions: 
            [
             IconButton
             (onPressed: () {}, icon: const Icon(Icons.share),color: Colors.black,)
            ],
            title: const Text("CLEAN ENVIRO - Profile", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.black),),
             leading: IconButton(icon: const Icon(Icons.arrow_back),color: Colors.black,onPressed: ()
             {
              Navigator.maybePop(context);
             },
             ),
            backgroundColor: Colors.white,
            shadowColor: const Color.fromARGB(255, 207, 114, 93),
      ),


      bottomNavigationBar: Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
              
              child: GNav(
                backgroundColor: Color.fromARGB(255, 128, 0, 0),
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(255, 202, 117, 117),
                gap: 8,
                padding:EdgeInsets.all(5.0),
                tabs: [
                  GButton(icon: Icons.home,text: "Home",textColor: Color.fromARGB(255, 128, 0, 0),iconColor: Colors.white,),
                  GButton(icon: Icons.message,text: "Message",textColor: Color.fromARGB(255, 128, 0, 0),iconColor: Colors.white,),
                  GButton(icon: Icons.search, text: "Search",textColor: Color.fromARGB(255, 128, 0, 0),iconColor: Colors.white,),
                  GButton(icon: Icons.settings,text: "Settings",textColor: Color.fromARGB(255, 128, 0, 0),iconColor: Colors.white,),
                  GButton(icon: Icons.notifications,text: "Notify",textColor: Color.fromARGB(255, 128, 0, 0),iconColor: Colors.white,),
                ]
                ),
                
            ),
          ),
        
          
backgroundColor: const Color.fromARGB(255, 128, 0, 0),
      
         body: Column
         (
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              
              child: Container
              (
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(168, 231, 147, 161)),
                height: 150,width: 380,
                child: Image.asset("assets/images/user icon.webp",alignment: Alignment.topLeft,),
                
              ),
            ),

          // const SizedBox(height: 5),

         //  const Text(
              //'Name: ', style: TextStyle(fontSize: 18),textAlign: TextAlign.left,
          // ),

          //const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container
            (
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(255, 241, 238, 238)), height: 150,width: 380,
              child: Image.asset("assets/images/waste points.jpeg",),
            ),
          ),

          const SizedBox(height:5),

          Center(
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
  
              child: Container
              (  
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:const Color.fromARGB(168, 231, 147, 161)), height: 150,width: 380, 
                
              padding:const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        percent: 0.10,
                        center: const Text("Paper Waste Disposal",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        progressColor: Colors.blue,
                      ),
                     
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        percent: 0.60,
                        center: const Text("Plastic Waste Disposal",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        progressColor: Colors.yellow,
                      ),
            
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        percent: 0.90,
                        center: const Text("Glass Waste Disposal",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        progressColor: Colors.green,
                      ),
                    ], 
                  ),
              ),
            ),           
          ),

          const SizedBox(height: 10),

          Container
          (
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white), height: 150,width: 380,
            //child: Column
           // (
            //  children:<Widget> 
             // [
             //   Image.asset("assets/reward points.jpeg",alignment: Alignment.bottomLeft),
              //  const Padding(
               //   padding: EdgeInsets.all(8.0),
              //    child: Text ("My Reward Points", style: TextStyle(color: Colors.black),textAlign: TextAlign.right,),
             //   ),
            //  ]
           // )
          ),
          

          ],
         ), 
        ),
      )
    );
  }
}
