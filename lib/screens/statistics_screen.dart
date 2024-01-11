import 'package:binify/bar_graph/bar_graph.dart';
import 'package:binify/screens/about_screen.dart';
import 'package:binify/screens/alldevices_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/profile_screen.dart';
import 'package:binify/screens/device_screen.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StatisticsScreen extends StatefulWidget {
  
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => StatisticsScreenState();
}

class StatisticsScreenState extends State<StatisticsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<double> monthlySummary = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://binifiy-default-rtdb.asia-southeast1.firebasedatabase.app/binstorage.json'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      
      final int janUsage = data['janUsage'];
      final int febUsage = data['febUsage'];
      final int marUsage = data['marUsage'];
      final int aprUsage = data['aprUsage'];
      final int meiUsage = data['meiUsage'];

      setState(() {
        monthlySummary = [
          janUsage.toDouble(),
          febUsage.toDouble(),
          marUsage.toDouble(),
          aprUsage.toDouble(),
          meiUsage.toDouble(),
        ];

      });
    } else {
      // Handle error, e.g., show a snackbar or log the error
      print('Failed to fetch data: ${response.statusCode}');
    }
  }
  
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
                  

                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                  Text("Statistics",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "poppinssemibold",
                    fontSize: 18
                  ),),

                  SizedBox(width: 190,),
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
              padding: const EdgeInsets.only(top:25.0, right: 180),
              child: Text("Statistics - Monthly",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "poppinssemibold",
                fontSize: 18
              ),),
            ),

            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 360,
                decoration: BoxDecoration(
                  color: Color(0x80818181),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Stack(
                children: [
                  Positioned(
                    child: MyBarGraph(
                      monthlySummary: monthlySummary,
                    ),
                  )
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 355,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                        top: 30,
                        left: 20,
                        child: Text("Bin Storage",
                        style: TextStyle(
                          fontFamily: "poppinssemibold",
                          fontSize: 18,
                          color: Colors.white
                        ),),), 
            
                        Positioned(
                          top: 20,
                          left: 200,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color(0xff647CD1),
                            borderRadius: BorderRadius.circular(50)
                          ),
                        )),
                        Positioned(
                        top: 18,
                        left: 226,
                        child: Text("Usage",
                        style: TextStyle(
                          fontFamily: "poppinsmedium",
                          fontSize: 15,
                          color: Colors.white
                        ),),),
            
                        Positioned(
                          top: 50,
                          left: 200,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        )),
                        Positioned(
                        top: 48,
                        left: 226,
                        child: Text("Total Space",
                        style: TextStyle(
                          fontFamily: "poppinsmedium",
                          fontSize: 15,
                          color: Colors.white
                        ),),),
                      ],
                    )
                  ),
                ],
              ),
            )


          ],
        ),
      )  
      ), 
    );
  }
}