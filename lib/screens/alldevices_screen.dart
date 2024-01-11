import 'package:binify/screens/about_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/profile_screen.dart';
import 'package:binify/screens/device_screen.dart';
import 'package:binify/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class DevicesScreen extends StatefulWidget {
  
  const DevicesScreen({super.key});

  @override
  State<DevicesScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  // This widget is the root of your application.
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
                  
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
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

                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
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
        height: MediaQuery.of(context).size.height,
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
                  Text("All Devices",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppinssemibold",
                    fontSize: 18
                  ),),

                  SizedBox(width: 170,),
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
              padding: const EdgeInsets.only(top:25.0, right: 280),
              child: Text("Devices",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "poppinssemibold",
                fontSize: 18
              ),),
            ),

            SizedBox(height: 10,),
            Container(
              height: 80,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)
                      ),
                  )),

                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                    height: 58,
                    width: 50,
                    child: Image.asset('assets/images/device.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Device 1", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 37,
                    left: 81,
                    child: Text("25 kg", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 310,
                    child: IconTheme(
                    data: IconThemeData(color: Colors.white), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DeviceScreen()),
                        );
                      },
                      icon: Icon(FeatherIcons.chevronRight),
                    ),
                  ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),
            Container(
              height: 80,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)
                      ),
                  )),

                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                    height: 58,
                    width: 50,
                    child: Image.asset('assets/images/device.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Device 2", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 37,
                    left: 81,
                    child: Text("35 kg", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 310,
                    child: IconTheme(
                    data: IconThemeData(color: Colors.white), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(FeatherIcons.chevronRight),
                    ),
                  ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),
            Container(
              height: 80,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)
                      ),
                  )),

                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                    height: 58,
                    width: 50,
                    child: Image.asset('assets/images/device.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Device 3", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 37,
                    left: 81,
                    child: Text("15 kg", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 310,
                    child: IconTheme(
                    data: IconThemeData(color: Colors.white), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(FeatherIcons.chevronRight),
                    ),
                  ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),
            Container(
              height: 80,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)
                      ),
                  )),

                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                    height: 58,
                    width: 50,
                    child: Image.asset('assets/images/device.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Device 4", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 37,
                    left: 81,
                    child: Text("30 kg", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 310,
                    child: IconTheme(
                    data: IconThemeData(color: Colors.white), // Sesuaikan dengan warna yang Anda inginkan
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(FeatherIcons.chevronRight),
                    ),
                  ),
                  )
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