import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {

  final String? title;
  const NewPage({Key? key,required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString(),),
      ),
      body: Center(
        child: Text(title.toString(), style: TextStyle(fontSize: 25, color: Colors.grey[500]),),
      ),
    );
  }
}

