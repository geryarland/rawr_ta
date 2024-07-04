import '../cosntants.dart';
import 'package:flutter/material.dart';

class MonitoringScreen extends StatefulWidget {
  const MonitoringScreen({super.key});

  @override
  State<MonitoringScreen> createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        backgroundColor: Constants.whiteColor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(125),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/RAWR_Logo.png',
                  height: 150, // Ubah ukuran jika diperlukan
                  width: 150, // Ubah ukuran jika diperlukan
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20), // Jarak antara logo dan teks
                Column(
                  children: [
                    Text(
                      'Selamat Datang',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Constants
                            .primaryColor, // Ubah warna teks jika diperlukan
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Hai, nama User !',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Constants
                            .primaryColor, // Ubah warna teks jika diperlukan
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 35),
              Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.whiteColor),
                  child: Center(
                      child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Level Air',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '50 %',
                            style: TextStyle(fontSize: 50),
                          ),
                          SizedBox(width: 80),
                          Text(
                            '50 L',
                            style: TextStyle(fontSize: 50),
                          ),
                        ],
                      ),
                    ],
                  ))),
              SizedBox(height: 35),
              Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constants.whiteColor),
                  child: Center(
                      child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Pompa Air',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ON',
                            style: TextStyle(fontSize: 50),
                          ),
                          SizedBox(width: 80),
                          Text(
                            'OFF',
                            style: TextStyle(fontSize: 50),
                          ),
                        ],
                      ),
                    ],
                  ))),
              SizedBox(height: 30),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constants.whiteColor),
                child: Center(
                  child: Text(
                    'Statistik yang di geser',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Constants.whiteColor,
          selectedItemColor: Constants.primaryColor,
          unselectedItemColor: Colors.black,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Menu Utama'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'Riwayat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), label: 'Keluar'),
          ]),
    );
  }
}
