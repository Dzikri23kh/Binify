import 'package:binify/screens/alldevices_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/profile_screen.dart';
import 'package:binify/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
            child: Container(
              color: Color(0xff1F2A49),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 10),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: Image.asset('assets/images/logo3.png',
                            width: 30,
                            height: 30,
                          ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top:20.0, left: 10),
                          child: Text("Binify",
                          style: TextStyle(
                            fontFamily: "poppinssemibold",
                            fontSize: 18,
                            color: Colors.white
                          ),),
                        ),

                        SizedBox(width: 140,),
                        IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                          icon: Padding(
                            padding: const EdgeInsets.only(top:15.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                        leading: Icon(FeatherIcons.home, color: Colors.white),
                        title: Text(
                          'Dashboard',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DashboardScreen()),
                          );
                        },
                      ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                        leading: Icon(FeatherIcons.trash, color: Colors.white),
                        title: Text(
                          'All Devices',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DevicesScreen()),
                          );
                          // Add your navigation logic here
                        },
                      ),
                  ),
                  

                  

                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                      leading: Icon(FeatherIcons.barChart, color: Colors.white),
                      title: Text(
                        'Statistics',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StatisticsScreen()),
                        );
                        // Add your navigation logic here
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                      leading: Icon(FeatherIcons.user, color: Colors.white),
                      title: Text(
                        'Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfileScreen()),
                        );
                        // Add your navigation logic here
                      },
                    ),
                  ),

                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(FeatherIcons.alertCircle, color: Colors.white),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutScreen()),
                        );
                        // Add your navigation logic here
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                      leading: Icon(FeatherIcons.plusCircle, color: Colors.white),
                      title: Text(
                        'CRUD',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CrudScreen()),
                        );
                        // Add your navigation logic here
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: ListTile(
                      leading: Icon(FeatherIcons.activity, color: Colors.white),
                      title: Text(
                        'Gempa Tekini',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CustomLV()),
                        );
                        // Add your navigation logic here
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff1F2A49),
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:35.0, left: 15),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: IconTheme(
                    data: IconThemeData(color: Colors.black), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {_scaffoldKey.currentState?.openDrawer();},
                      icon: Icon(FeatherIcons.menu),
                    ),
                  ),
                  ),

                  SizedBox(width: 10,),
                  Text("About",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppinssemibold",
                    fontSize: 18
                  ),),

                  SizedBox(width: 210,),
                  IconTheme(
                    data: IconThemeData(color: Colors.white, size: 30), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotificationsScreen()),
                        );
                      },
                      icon: Icon(Icons.notifications),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20.0, right: 315),
              child: Text("Alat",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "poppinssemibold",
                fontSize: 18
              ),),
            ),

            SizedBox(height: 10,),
            Container(
              height: 210,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 7,
                    left: 7,
                    child: Container(
                    height: 160,
                    width: 345,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset('assets/images/displaykit.png',
                      width: 500,
                      height: 150,),
                  ),
                    ),
                  
                  
                  Positioned(
                    top: 175,
                    left: 130,
                    child: Text("Display Kit",
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 18,
                      color: Colors.white
                    ),
                    ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/ESP32.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),
                          Positioned(
                            top: 175,
                            left: 60,
                            child: Text("ESP32",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/lcd.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),

                          Positioned(
                            top: 175,
                            left: 70,
                            child: Text("LCD",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/jumper.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),
                          Positioned(
                            top: 175,
                            left: 50,
                            child: Text("Jumper",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/bread board.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),

                          Positioned(
                            top: 175,
                            left: 30,
                            child: Text("Bread Board",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),

                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 7,
                          left: 7,
                          child: Container(
                          height: 160,
                          width: 345,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/buzzer.png',
                            width: 500,
                            height: 150,),
                        ),
                          ),
                        
                        
                        Positioned(
                          top: 175,
                          left: 150,
                          child: Text("Buzzer",
                          style: TextStyle(
                            fontFamily: "poppinsregular",
                            fontSize: 18,
                            color: Colors.white
                          ),
                          ))
                      ],
                    ),
                  ),
                
            Padding(
              padding: const EdgeInsets.only(top:20.0, right: 290),
              child: Text("Sensor",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "poppinssemibold",
                fontSize: 18
              ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/dht11.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),
                          Positioned(
                            top: 175,
                            left: 60,
                            child: Text("DHT 11",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/HC-SR04.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),

                          Positioned(
                            top: 175,
                            left: 50,
                            child: Text("HC-SR04",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/Passive Infrared Receiver.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),
                          Positioned(
                            top: 175,
                            left: 70,
                            child: Text("PIR",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 210,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('assets/images/ldr.png',
                              width: 100,
                              height: 100,),
                          ) 
                          ),

                          Positioned(
                            top: 175,
                            left: 70,
                            child: Text("LDR",
                            style: TextStyle(
                              fontFamily: "poppinsregular",
                              fontSize: 18,
                              color: Colors.white
                            ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        )
        
      ),
    );
  }
}