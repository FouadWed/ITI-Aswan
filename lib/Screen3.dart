import 'package:flutter/material.dart';
import 'package:task_day_2/Screen%202.dart';

import 'Screen 2.dart ';


class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Android Pizza Place"),
      ),
      body: Container(
        width: double.infinity,
        height: 100,
        margin:EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap:  () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Screen2()),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/25IeLKasMNUxPqvCphdVeOM6Qgrt7p0sbO8_fJ0Ip7Q/rs:fit:592:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5W/SUhvTmx4UFRrWGZX/Mmk2RGdmSWJ3SGFG/NyZwaWQ9QXBp'
                    ),
                  ),
                  title: Text(
                    'Vegetable Pizza',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black54
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}