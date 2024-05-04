// ignore: depend_on_referenced_packages
import 'package:birdie_flutter_project/maps.dart';
import 'package:flutter/material.dart';

class DvrScreen extends StatefulWidget {
  const DvrScreen({super.key});

  @override
  State<DvrScreen> createState() => _DvrScreenState();
}

class _DvrScreenState extends State<DvrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: 20,),
        
            Row(
              children: [
                ElevatedButton(onPressed: (){}, 
                    child: Text("DVR",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      
                      backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                    ),
                    ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 500,
              child: Text('Video live', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(child: Text('Tracks')),
            //Maps(),
          ]
        ),
      ),
    );
  }
}