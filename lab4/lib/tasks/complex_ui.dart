import "package:flutter/material.dart";
import "package:lab4/widgets/post.dart";
import "package:lab4/widgets/story.dart";

class ComplexUi extends StatelessWidget {
  const ComplexUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Instagram")),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  story(
                    "https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?rs=1&pid=ImgDetMain",
                    10,
                    10,
                  ),
                  story(
                    "https://th.bing.com/th/id/OIP.Y7kv08koZ3m6w4LkZT1WvgHaHa?rs=1&pid=ImgDetMain",
                    10,
                    10,
                  ),
                  story(
                    "https://images.pexels.com/photos/24185772/pexels-photo-24185772.jpeg?cs=srgb&dl=pexels-hardeep-24185772.jpg&fm=jpg",
                    10,
                    10,
                  ),
                  story(
                    "https://burst.shopifycdn.com/photos/man-thinking.jpg?width=1000&format=pjpg&exif=0&iptc=0",
                    10,
                    10,
                  ),
                  story(
                    "https://th.bing.com/th/id/OIP.qM8NOVuRx6fQ6aZHqDl8bAHaLH?rs=1&pid=ImgDetMain",
                    10,
                    10,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("Search:"),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Type here!",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print("pressed");
                      },

                      label: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            post(
              "https://th.bing.com/th/id/OIP.xrZIEhpJrAdGTbuBh8JHOQHaJy?w=3024&h=4000&rs=1&pid=ImgDetMain",
              "https://3.bp.blogspot.com/-j1PaZ8vLU8g/VFkfnUtlAQI/AAAAAAAAALM/hfyQKfbZTAc/s1600/autumn-free-wallpaper-autumn_2560x1600_93072%25252B(1).jpg",
              "GHS",
            ),
            post(
              "https://th.bing.com/th/id/OIP.Os3dloCTc-JUqOagtZOXVAHaHr?rs=1&pid=ImgDetMain",
              "https://www.pixelstalk.net/wp-content/uploads/2016/08/HD-blue-abstract-background.jpg",
              "abdul",
            ),
          ],
        ),
      ),
    );
  }
}
