import 'package:flutter/material.dart';
import 'package:task_day_2/Rooms.dart';


class RoomListScreen extends StatefulWidget {
  const RoomListScreen({Key? key}) : super(key: key);

  @override
  State<RoomListScreen> createState() => _RoomListScreen();
}

class _RoomListScreen extends State<RoomListScreen> {

  var rooms = Hotel();
  int firstIndex = 0;
  int secondIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Room List"),
        centerTitle: true,
        leading: Icon(Icons.arrow_circle_left_outlined),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 230,
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(8,5))),
              child: InkWell(
                onTap: () => print("Tap"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(8,8),
                        topRight: Radius.elliptical(8,8),
                      ),
                      child: Image.network(
                          '${rooms.rooms[firstIndex].image}',
                          // width: 300,
                          height: 150,
                          fit:BoxFit.fill
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '${rooms.rooms[firstIndex].title}',
                      ),
                      subtitle: Text(
                        '${rooms.rooms[firstIndex].description}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 230,
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("hello"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                          '${rooms.rooms[secondIndex].image}',
                          // width: 300,
                          height: 150,

                          fit:BoxFit.cover
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '${rooms.rooms[secondIndex].title}',
                      ),
                      subtitle: Text(
                        '${rooms.rooms[secondIndex].description}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                 borderRadius : BorderRadius.horizontal()
              ),
              child: Container(
                height: 60,
                width: 210,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green
                      ),
                    ),

                    Icon(
                      Icons.next_plan,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            onTap: (){
              setState((){
                firstIndex = 2;
                secondIndex = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}

