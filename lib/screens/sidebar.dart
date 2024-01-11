import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => SidebarState();
}

class SidebarState extends State<Sidebar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add this line to set the key for the Scaffold
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff1F2A49),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconTheme(
                        data: IconThemeData(color: Colors.black),
                        child: IconButton(
                          onPressed: () {
                            // Open the sidebar menu
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: Icon(FeatherIcons.menu),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppinssemibold",
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    IconTheme(
                      data: IconThemeData(color: Colors.white, size: 30),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                    ),
                  ],
                ),
              ),
              // Rest of your code
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Sidebar Menu'),
              decoration: BoxDecoration(
                color: Color(0xff1F2A49),
              ),
            ),
            ListTile(
              leading: Icon(FeatherIcons.home),
              title: Text('Dashboard'),
              onTap: () {
                // Navigate to the dashboard screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(FeatherIcons.trash),
              title: Text('All Devices'),
              onTap: () {
                // Navigate to the all devices screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(FeatherIcons.barChart),
              title: Text('Statistics'),
              onTap: () {
                // Navigate to the statistics screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(FeatherIcons.user),
              title: Text('Profile'),
              onTap: () {
                // Navigate to the profile screen
                Navigator.pop(context);
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
