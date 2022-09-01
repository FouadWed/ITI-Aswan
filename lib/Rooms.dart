import 'package:task_day_2/Rooms.dart';
class Room {
  late String image;
  late String title;
  late String description;

  Room(this.image, this.title, this.description);
}
class Hotel {
  List<Room> rooms =[
    Room(
        "https://imgs.search.brave.com/v0QS3zXNdsk_X7Td0W2S59byWYkLSEYAeS4wVNL3G4k/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5W/OFpxcWp0c0p2b2xy/bm96VzNlUmNRSGFF/OCZwaWQ9QXBp",
        "Kings Room",
        "kings-sized bed."
    ),
    Room(
      "https://imgs.search.brave.com/lHKhdue8bZwzXZqJd5ADAMULjHW-31l6-ltagbT7dGU/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5p/Q25LcEo2LUdFZDNz/LTB4OXd1UXR3SGFF/OCZwaWQ9QXBp",
      "Double Room",
      "Two Persons.",
    ),

  Room(
  "https://imgs.search.brave.com/5N5mCUMnl_hxHSR76OF1VYX9qQNGnAayM-QiUJKbImM/rs:fit:713:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5V/RGNNV0c5UjlGanNP/MTY1T1E0c2JRSGFF/NyZwaWQ9QXBp",
  "HoneyMoon Room",
  "Husband and Wife."
  ),

    Room(
        "https://imgs.search.brave.com/fxGmzZNgvu3Rzt0O8SAzwwzzo67ZSuRVLiTKr4vO7Cw/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5N/bi1WMzNpMlo4RlBq/MlhtVTJnWkZRSGFF/OCZwaWQ9QXBp",
        "Friends Room",
        "Three or Four Persons."
    ),


  ];

  int RecentRoom = 0;

  Room GetRecentRoom() {
    return rooms[RecentRoom];
  }
}


