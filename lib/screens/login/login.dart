
import 'package:flutter/material.dart';
import 'package:TeemTravel/screens/map_detail/map.dart';

class UserLogin extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Login'),
        ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Hello'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapDetail())
          );
        },
      ),
    );
  }

}