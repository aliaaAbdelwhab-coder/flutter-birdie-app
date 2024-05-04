
import 'package:birdie_flutter_project/screens/dvrscreen.dart';
import 'package:birdie_flutter_project/screens/monitor.dart';
import 'package:birdie_flutter_project/screens/profilepage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentindex = 0;

  final tabs =[
    Center(child: Text('car life')),
    Center(child: DvrScreen() ),
    Center(child: MonitorPage()),
    Center(child: Text('Files')),
    Center(child: ProfilePage(),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[400],
        iconSize: 40,
        selectedFontSize: 15,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Car Life",
             
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: "DVR",
            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "Moitor",

            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file),
            label: "Files",

            
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",

            
            ),
        ],
        onTap: (int index){
          setState(() {
            _currentindex = index;

          });

        },
      ),
      
    );
  }
}