import 'package:rawr_ta/cosntants.dart';

import '../screens/monitoring_screen.dart';
import '../pages/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: (Image.asset(
                  'images/RAWR_White.png',
                  height: 650,
                  width: 600,
                )),
              ),
              TextField(
                autofocus: false,
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Masukkan Username',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                autofocus: true,
                obscureText: true,
                obscuringCharacter: '*',
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Masukkan Kata Sandi',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Kata Sandi',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MonitoringScreen()));
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                        color: Color.fromARGB(255, 65, 102, 245),
                        fontWeight: FontWeight.w800),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text(
                  'Belum Punya Akun ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
