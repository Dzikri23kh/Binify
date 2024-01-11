import 'package:binify/bar_graph/bar_graph.dart';
import 'package:binify/screens/about_screen.dart';
import 'package:binify/screens/alldevices_screen.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/profile_screen.dart';
import 'package:binify/screens/statistics_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:d_chart/d_chart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  
  List<double> monthlySummary = [];

  List<OrdinalData> ordinalDataList = [];

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
      final int meiFree = data['meiFree'];

      setState(() {
        monthlySummary = [
          janUsage.toDouble(),
          febUsage.toDouble(),
          marUsage.toDouble(),
          aprUsage.toDouble(),
          meiUsage.toDouble(),
        ];

        ordinalDataList = [
          OrdinalData(domain: 'meiUsage', measure: meiUsage, color: Color(0xff4E5FB4)),
          OrdinalData(domain: 'meiFree', measure: meiFree, color: Color(0xffEEEEEE)),
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
                        Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          child: IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                            icon: Icon(
                                Icons.close,
                                color: Colors.black,
                              ),
                            
                          ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(FeatherIcons.home, color: Colors.white),
                      title: Text(
                        'Dashboard',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
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
                        Navigator.pop(context);
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
                        Navigator.pop(context);
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
                        Navigator.pop(context);
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
                        Navigator.pop(context);
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
                  Text("Dashboard",
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

            SizedBox(height: 20,),
            Container(
              height: 175,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0x80818181),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 55, // Atur posisi sesuai kebutuhan
                    left: 25, // Atur posisi sesuai kebutuhan
                      child: Text(
                        "Device On Maps",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "poppinssemibold",
                          fontSize: 18,
                        ),
                      ),
                  ),
                  Positioned(
                    top: 115, // Atur posisi sesuai kebutuhan
                    left: 13, // Atur posisi sesuai kebutuhan
                      child: Container(
                        height: 40,
                        width: 175,
                        decoration: BoxDecoration(
                          color: Color(0xff4E5FB4),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text("View",
                          style: TextStyle(
                            fontFamily: "poppinsregular",
                            fontSize: 15,
                            color: Colors.white
                          ),),
                        ),
                      )
                  ),
                  Positioned(
                    top: 20,
                    left: 200,
                    child: SizedBox(
                    height: 131,
                    width: 142,
                    child: Image.asset('assets/images/map.png')
                  )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20.0, right: 175),
              child: Text("Statistics - Monthly",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppinssemibold",
                  fontSize: 18
              ),),
            ),

            SizedBox(height: 20,),
              Container(
              height: 200,
              width: 360,
                decoration: BoxDecoration(
                  color: Color(0x80818181),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: MyBarGraph(
                monthlySummary: monthlySummary,
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 20),
            child: Row(
              children: [
                Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Color(0x80818181),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      top: 10,
                      left: 10,
                      child: Text("Bin Storage",
                      style: TextStyle(
                        fontFamily: "poppinssemibold",
                        fontSize: 18,
                        color: Colors.white
                      ),),),

                      Positioned(
                      top: 40,
                      left: 10,
                      child: Text("Mei 01 - Mei 31",
                      style: TextStyle(
                        fontFamily: "poppinsmedium",
                        fontSize: 18,
                        color: Color(0xff647CD1)
                      ),),),

                      Positioned(
                        top: 100,
                        left: 10,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xff647CD1),
                          borderRadius: BorderRadius.circular(50)
                        ),
                      )),
                      Positioned(
                      top: 98,
                      left: 36,
                      child: Text("Usage",
                      style: TextStyle(
                        fontFamily: "poppinsmedium",
                        fontSize: 15,
                        color: Colors.white
                      ),),),

                      Positioned(
                        top: 130,
                        left: 10,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      )),
                      Positioned(
                      top: 128,
                      left: 36,
                      child: Text("Total Space",
                      style: TextStyle(
                        fontFamily: "poppinsmedium",
                        fontSize: 15,
                        color: Colors.white
                      ),),),
                    ],
                  )
                ),

                SizedBox(width: 10,),
                Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 175,
                    height: 175,
                    child: DChartPieO(
                    data: ordinalDataList,
                    configRenderPie: const ConfigRenderPie(
                      arcWidth: 20,
                    ),
                  ),
                  ),
                  
                  Positioned.fill(
                    child: Center(
                      child: Text(
                        '70%',
                        style: TextStyle(
                          color: Colors.white, // Sesuaikan dengan warna teks yang diinginkan
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
        ]),
      ),
      ),

      
      
      
    );
  }
}