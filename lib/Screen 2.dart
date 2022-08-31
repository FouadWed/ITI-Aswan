import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Title Widgets"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 100,
              child: Icon(
                Icons.phone,
                color:Colors.green,
              ),
            ),
            title: Text(
                'Phone',
                style: TextStyle(
                    color: Colors.green
                )
            ),
            subtitle:Text(
              "01118163681",
              style: TextStyle(
                  fontSize:20,
                  color: Colors.green
              ),
            ),
            trailing: IconTheme(
              data: new IconThemeData(
                color:  Colors.green,
              ),
              child: Icon(
                  Icons.shopping_cart
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Container(
              height: 100,
              child: Icon(
                Icons.alternate_email,
                color:  Colors.green,
              ),
            ),
            title: Text(
                'E-mail address',
                style: TextStyle(
                    color: Colors.green
                )
            ),
            subtitle:  Text(
              "wedfouad2@gmail.com",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green
              ),
            ),
            trailing: IconTheme(
              data: new IconThemeData(
                color:  Colors.green,
              ),
              child: Icon(
                  Icons.send
              ),
            ),

          ),
        ],
      ),
    );
  }
}