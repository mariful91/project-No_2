import 'package:flutter/material.dart';
import 'package:project_no_2/Details.dart';
import 'package:project_no_2/Homepage.dart';
import 'package:project_no_2/Profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> ColorList = [
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
  ];

  List<String> ColorsNames = ["Green", "Yellow", "Blue", "Red", "Pink"];

  int ColorIndex = 0;

  void ColorNameChange() {
    setState(() {
      ColorIndex = ColorIndex + 1;
      if (ColorIndex == 5) {
        ColorIndex = 0;
      }
    });
  }

  List pageList = [
    Homepage(),
    Details(),
    Profile(),
    
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var scaffold2 = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("APP_2"),
      ),

      
      body: 
      pageList[pageIndex] ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ColorNameChange();
        },
        child: Icon(Icons.add_home),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
          setState(() {
            pageIndex = index;
          });
        },
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: pageIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
    var scaffold = scaffold2;
    return scaffold;
  }
}
