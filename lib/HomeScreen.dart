import 'package:flutter/material.dart';

import 'customwidget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Row(
          children: [
            Text("News App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              width: 100,
            ),
            Icon(Icons.cloudy_snowing,
            color: Colors.blue,),
            SizedBox(
              width: 10,
            ),

            Text("Load News",
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue
            ),)
          ],

        ),
      ),
      backgroundColor: Colors.grey[300],
      body: ListView(
       children: [
         CustomWidget(text: "Editor Name",text1: "Date and time",
         text2: "Heading",
         text3: "Discription",
         text4: "Disciption",
         imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
         SizedBox(
           height: 10,
         ),
         CustomWidget(text: "Editor Name",text1: "Date and time",
           text2: "Heading",
           text3: "Discription",
           text4: "Disciption",
           imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
         SizedBox(
           height: 10,
         ),
         CustomWidget(text: "Editor Name",text1: "Date and time",
           text2: "Heading",
           text3: "Discription",
           text4: "Disciption",
           imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
         SizedBox(
           height: 10,
         ),
         CustomWidget(text: "Editor Name",text1: "Date and time",
           text2: "Heading",
           text3: "Discription",
           text4: "Disciption",
           imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
         SizedBox(
           height: 10,
         ),
         CustomWidget(text: "Editor Name",text1: "Date and time",
           text2: "Heading",
           text3: "Discription",
           text4: "Disciption",
           imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
         SizedBox(
           height: 10,
         ),
         CustomWidget(text: "Editor Name",text1: "Date and time",
           text2: "Heading",
           text3: "Discription",
           text4: "Disciption",
           imageUrl: "https://media.istockphoto.com/id/1429064821/photo/summer-raincloud.jpg?s=2048x2048&w=is&k=20&c=MjnYW5R3IHDlIzuViTCOXtYWWaPOcFDrHGEHmCbO-rk=",),
       ]

      ),

    );
  }
}
