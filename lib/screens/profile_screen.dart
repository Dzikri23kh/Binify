import 'package:binify/screens/about_screen.dart';
import 'package:binify/screens/alldevices_screen.dart';
import 'package:binify/screens/crud.dart';
import 'package:binify/screens/customLV.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/screens/notification_screen.dart';
import 'package:binify/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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

                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0x80818181),
                      borderRadius: BorderRadius.circular(10),
                    ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  Text("Profile",
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
                        );},
                      icon: Icon(Icons.notifications),
                    ),
                  ),
                ],
              ),
            ),
              ],
              ),

              Padding(
                padding: const EdgeInsets.only(top:15.0, left: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/profile.png',
                      width: 93, // Lebar gambar yang diinginkan
                      height: 100
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Moch Dzikri Khoerudin",
                          style: TextStyle(
                            fontFamily: "poppinssemibold",
                            fontSize: 18,
                            color: Colors.white
                          ),),
                          Text("App Developer",
                          style: TextStyle(
                            fontFamily: "poppinsregular",
                            fontSize: 16,
                            color: Color(0xffD9D9D9)
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Row(
                              children: [
                                Icon(FeatherIcons.mapPin, color: Color(0xffD9D9D9), size: 14,),
                                Text(" Bandung, Jawa barat",
                                style: TextStyle(
                                  fontFamily: "poppinsregular",
                                  fontSize: 14,
                                  color: Color(0xffD9D9D9)
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 20),
                child: Text(
                  "I am currently pursuing my undergraduate degree at ITENAS and I am currently in my fifth semester.\n"
                  "I am also a dedicated enthusiast of the Flutter framework, and I have been actively exploring and developing with it, driven by my passion for creating innovative mobile applications.",
                  style: TextStyle(
                    fontFamily: "poppinsregular",
                    fontSize: 15,
                    color: Color(0xffD9D9D9),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Text("Skills",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppinssemibold",
                  fontSize: 15
                ),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0, horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x80818181),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/html.png',
                      width: 85,
                      height: 85,),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x80818181),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/css.png',
                      width: 85,
                      height: 85,),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x80818181),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/flutter.png',
                      width: 85,
                      height: 85,),
                    ),
                  ],
                ),
              ),

              Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Text("Personal Informations",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppinssemibold",
                  fontSize: 15
                ),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:15.0, top: 12),
              child: ListTile(leading: Container(
                height: 50,
                width: 50,
                child: Icon(FeatherIcons.mail,color: Colors.black,), 
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10),),),
                title: Text("E-mail",
                style: TextStyle(
                  fontFamily: "poppinsregular",
                  fontSize: 15,
                  color: Color(0xffD9D9D9),
                ),), 
                subtitle: Text('moch.dzikri@mhs.itenas.ac.id',
                style: TextStyle(
                  fontFamily: "poppinssemibold",
                  fontSize: 15,
                  color: Colors.white,
                ),),),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: ListTile(leading: Container(
                height: 50,
                width: 50,
                child: Icon(FeatherIcons.phone,color: Colors.black,), 
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10),),),
                title: Text("Phone Number",
                style: TextStyle(
                  fontFamily: "poppinsregular",
                  fontSize: 15,
                  color: Color(0xffD9D9D9),
                ),), 
                subtitle: Text('089637074584',
                style: TextStyle(
                  fontFamily: "poppinssemibold",
                  fontSize: 15,
                  color: Colors.white,
                ),),),
            ),
              
            ],
          ),
        ),
      ),
    );
  }
}