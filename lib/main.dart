import 'package:drawer_app/new_page.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: HomePage(),
        // routes: <String,WidgetBuilder>{
        //   "/a":(BuildContext context) => NewPage(title: "Great Done",
        //   )
        // },
      )
  );
}

