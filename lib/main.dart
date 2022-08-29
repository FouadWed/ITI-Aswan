// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SecondTaskScreen extends StatelessWidget {
  const SecondTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              Image(
                image: NetworkImage(
                  'https://i.pinimg.com/originals/66/f1/6e/66f16eee76fa106a4cc160cbf6a58611.jpg',
                ),
                fit: BoxFit.cover,
                height: 200.0,
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Account Settings',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CircleAvatar(
            maxRadius: 60,
            backgroundImage: NetworkImage(
                'https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/295982922_5173674382754865_3189242267481034179_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHfDmvAgVWImetpIaQcOR-GAvI0NFr5dicC8jQ0Wvl2J2PlWPpzj9f87TpRmtwCkq2asyD-DtS5vI5fu5hDRz5X&_nc_ohc=GZrXmhogPtsAX_ew9l2&_nc_ht=scontent.fcai19-6.fna&oh=00_AT-verZSOlMWQuKDpgB1_mwtAZtuOSXCch8esiMz57-ciw&oe=6310F932'),
          ),
          const Text(
            "Fouad WED",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FlatButton(
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 183, 189, 8),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3))
              ]),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 220, 188, 10),
                    ),
                    title: Text('Phone'),
                    subtitle: Text(
                      "01118163681",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.alternate_email,
                      color: Color.fromARGB(255, 220, 188, 10),
                    ),
                    title: Text('Email'),
                    subtitle: Text(
                      "Wedfouad2@gmail.com",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 218, 201, 5),
                    ),
                    title: Text('Password'),
                    subtitle: Text(
                      "**",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
              child: Card(
                elevation: 5,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: SizedBox(
                  height: 50,
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Log Out"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.logout,
                        color: Color.fromARGB(255, 31, 135, 209),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
    return scaffold;
  }
}