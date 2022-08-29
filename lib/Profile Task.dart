// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text("Profile"),
          centerTitle: true,
          actions: const [
            Icon(
                Icons.favorite_border_outlined
            ),
            SizedBox(width: 15,),
            Icon(
              Icons.menu_outlined,
            ),
            SizedBox(width: 15,),
          ],
          leading: const Icon(Icons.arrow_back),
        ),

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              const CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(
                    'https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-1/295982922_5173674382754865_3189242267481034179_n.jpg?stp=dst-jpg_p240x240&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeHfDmvAgVWImetpIaQcOR-GAvI0NFr5dicC8jQ0Wvl2J2PlWPpzj9f87TpRmtwCkq2asyD-DtS5vI5fu5hDRz5X&_nc_ohc=GZrXmhogPtsAX_ew9l2&_nc_ht=scontent.fcai19-6.fna&oh=00_AT9Vwn6GBbulNt2bqOd_oFjPFx5eh1w3gM-I7OllyvMANA&oe=6311F1B4'
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "WED",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              ),
              const SizedBox(height: 5,),
              const Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "Creat great projects",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              const Text(
                "@ITI",
                style:
                TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                      height:50,
                      width: 50,
                      child: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 12, 51, 117),
                        size: 30,
                      )
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height:50,
                    width: 50,
                    child: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Color.fromARGB(255, 12, 51, 117),
                      size: 30,
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height:50,
                    width: 50,
                    child: const Icon(
                      FontAwesomeIcons.facebook,
                      color: Color.fromARGB(255, 12, 51,117),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70,),
              Container(
                width: double.infinity,
                height: 2.0,
                color: Colors.blueAccent[100],
              ),
              const SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 100,
                    width: 150,
                    child: const ListTile(
                      title: Icon(
                        Icons.gpp_good_outlined,
                        size: 50,color: Colors.indigo,
                      ),
                      subtitle: Text(
                        "1.3K \n Followers",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),
                        textAlign: TextAlign.center,),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 100,
                    width:150,
                    child: const ListTile(
                      title: Icon(
                        Icons.gpp_good_outlined,
                        size: 50,color: Colors.indigo,
                      ),
                      subtitle: Text(
                        "1.3K \n Followers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}