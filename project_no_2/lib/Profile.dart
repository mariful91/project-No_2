import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var materialButton = MaterialButton(
      color: Colors.blueGrey,
      onPressed: () {
        print("MaterialButton pressed");
       
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), 
      ),
      child: Padding(
        padding: EdgeInsets.all(20.1),
        child: Text("MaterialButton"),
      ),
    );

    var materialButton2 = materialButton;
    var materialButton22 = materialButton2;

    var children = [
      SizedBox(height: 20), 
      materialButton22,
      SizedBox(height: 50), 
      ElevatedButton(
        onPressed: () {
          print("ElevatedButton pressed");
        },
        child: Text("Press Me"),
      ),
      TextButton(
        onPressed: () {
          print("TextButton pressed");
        },
        child: Text("TextButton"), 
      ),
    ];

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: children,
      ),
    );
  }
}