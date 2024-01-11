import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(FeatherIcons.chevronLeft),
                      ),
                    ),
                    ),

                    SizedBox(width: 75,),
                    Text("Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppinssemibold",
                        fontSize: 20
                    ),),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Row(
                  children: [
                    Text("Today",
                      style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppinssemibold",
                      fontSize: 20
                    ),),
                  ],
                ),
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
                    child: Image.asset('assets/images/organic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Organic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 278,
                    child: Text("08:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
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
                    child: Image.asset('assets/images/organic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Organic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 280,
                    child: Text("13:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
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
                    child: Image.asset('assets/images/anorganic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Anorganic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 280,
                    child: Text("19:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
            ),

            SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Row(
                  children: [
                    Text("Yesterday",
                      style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppinssemibold",
                      fontSize: 20
                    ),),
                  ],
                ),
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
                    child: Image.asset('assets/images/anorganic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Anorganic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 278,
                    child: Text("09:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
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
                    child: Image.asset('assets/images/organic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Organic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 280,
                    child: Text("15:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
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
                    child: Image.asset('assets/images/anorganic.png'),
                  )),

                  Positioned(
                    top: 15,
                    left: 81,
                    child: Text("Jenis Sampah", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 81,
                    child: Text("Sampah Anorganic", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 15,
                    left: 270,
                    child: Text("Waktu", 
                    style: TextStyle(
                      fontFamily: "poppinssemibold",
                      fontSize: 15,
                      color: Colors.white
                  ),)),

                  Positioned(
                    top: 40,
                    left: 280,
                    child: Text("21:00", 
                    style: TextStyle(
                      fontFamily: "poppinsregular",
                      fontSize: 13,
                      color: Colors.white
                  ),)),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}