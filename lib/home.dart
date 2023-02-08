import 'package:drawer_app/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Drawer App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Vaibhav Tale"),
              accountEmail: Text("vaibhavtale20@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text(
                  "V",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text("R"),
                )
              ],
            ),
            ListTile(
              title: Text(
                "Page One",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        NewPage(title: "Page One")));
              },
            ),
            ListTile(
              title: Text(
                "Page Two",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_downward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> NewPage(title: "Second Page")));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Close",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
            child: Text(
          "Welcome User",
          style: TextStyle(fontSize: 30, color: Colors.grey[500]),
        )),
      ),
    );
  }
}
