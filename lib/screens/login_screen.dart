import 'package:flutter/material.dart';
import 'package:binify/screens/dashboard_screen.dart';
import 'package:binify/user_auth/firebase_auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginScreen extends StatefulWidget {
  
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override   
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        color: Color(0xff1F2A49),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/logo.png'),
          ),
 
          SizedBox(
            width: 327,
            height: 320,
            child: Image.asset('assets/images/splashscreen.png'),
          ),
          
          Text(
            "Login ",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'poppinssemibold',
              color: Colors.white,
            ),
          ),

          SizedBox(height: 24),
          Container(
            width: 300, // Mengatur lebar sesuai kebutuhan
            height: 40, // Mengatur tinggi sesuai kebutuhan
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                ),
                filled: true,
                fillColor: Color(0x80818181),
                hintText: "Email Address",
                hintStyle: TextStyle(color: Color(0xFFB2B2B2)),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),

          SizedBox(height: 15),
          Container(
            width: 300, // Atur lebar sesuai kebutuhan
            height: 40, // Atur tinggi sesuai kebutuhan
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                ),
                filled: true,
                fillColor: Color(0x80818181),
                hintText: "Password",
                hintStyle: TextStyle(color: Color(0xFFB2B2B2)),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            height: 40,
            width: 275,
            child: Material(
              color: Color(0xFF647CD1),
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: (){
                  _signIn();
                },
                child: Padding(
                        padding: 
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'poppinsregular',
                          ),
                          ),
                        ),
                      ),
                    )
                  ),
              ),
          ),
          
        ]),
      ),
      ),
      
    );
  }

  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      _showSuccessDialog();
      print("User is successfully signed in");
    } else {
      _showErrorDialog();
      print("Email atau Password Salah!");
    }
  }
  void _showSuccessDialog() {
    List<String> emailParts = _emailController.text.split('@');
    String username = emailParts[0]; // Get the username part
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Successful!'),
          content: Text('Welcome back, $username!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the success dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
