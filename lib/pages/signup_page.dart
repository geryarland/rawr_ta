import 'package:flutter/material.dart';
import '../cosntants.dart';
import './login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              const TextField(
                autofocus: true,
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
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
              const SizedBox(
                height: 20,
              ),
              const TextField(
                autofocus: true,
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Masukkan Email',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              const TextField(
                autofocus: true,
                obscureText: true,
                obscuringCharacter: '*',
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Masukkan Sampai 6 Karakter',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Kata Sandi',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              const TextField(
                autofocus: true,
                obscureText: true,
                obscuringCharacter: '*',
                cursorColor: Colors.white,
                cursorWidth: 5,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Masukkan Sampai 6 Karakter',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Konfirmasi Kata Sandi',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                        color: Color.fromARGB(255, 65, 102, 245),
                        fontWeight: FontWeight.w800),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
