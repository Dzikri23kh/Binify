import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
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
                        onPressed: () {Navigator.pop(context);},
                        icon: Icon(FeatherIcons.chevronLeft),
                      ),
                    ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 100,),
              Text("Device 1",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppinssemibold",
                fontSize: 20
              ),),

              SizedBox(height: 30,),
              Container(
                height: 160,
                width: 163,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SizedBox(
                  height: 153,
                  width: 135,
                  child: Image.asset('assets/images/device2.png'),
                ),
              ),

              SizedBox(height: 30,),
              Container(
                height: 140,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0x80818181),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Text("Device Consumption",
                      style: TextStyle(
                        fontFamily: "poppinssemibold",
                        fontSize: 16,
                        color: Colors.white
                      ),)),

                    Positioned(
                      left: 15,
                      top: 60,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                        FeatherIcons.trash,
                        size: 30,
                        color: Colors.black,
                      )
                      )
                      ),
                    
                    Positioned(
                      left: 75,
                      top: 63,
                      child: Text("25 kg",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppinssemibold",
                        fontSize: 16,
                      ),)),

                    Positioned(
                      left: 75,
                      top: 88,
                      child: Text("Usage",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppinsregular",
                        fontSize: 14,
                      ),)),

                    Positioned(
                      left: 190,
                      top: 60,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          shape: BoxShape.circle
                        ),
                        child: Icon(
                        FeatherIcons.battery,
                        size: 30,
                        color: Colors.black,
                      )
                      )
                      ),
                    
                    Positioned(
                      left: 250,
                      top: 63,
                      child: Text("75%",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppinssemibold",
                        fontSize: 16,
                      ),)),

                    Positioned(
                      left: 250,
                      top: 88,
                      child: Text("Battery",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppinsregular",
                        fontSize: 14,
                      ),)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}