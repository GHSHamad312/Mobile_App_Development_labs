import "package:flutter/material.dart";
import "package:lab4/widgets/largesong.dart";
import "package:lab4/widgets/playlist.dart";

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "spotify",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.Lrxsd7qE1xlNSo9qczRXHgHaHa?rs=1&pid=ImgDetMain",
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  print("search");
                },
                label: Icon(Icons.search),
              ),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      playlist(
                        "paradise",
                        "https://th.bing.com/th/id/OIP.zWyPg0_OJkKOYqRtLCc1ewHaHa?rs=1&pid=ImgDetMain",
                      ),
                      playlist(
                        "level",
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/song-cover-design-template-55e9f04ff8e627c9d01b73962e39d8ca_screen.jpg?ts=1681999231",
                      ),
                      playlist(
                        "Not Like Us",
                        "https://th.bing.com/th/id/OIP.b9Y_cib3axdIO0j8Zip0FAAAAA?w=474&h=474&rs=1&pid=ImgDetMain",
                      ),
                      playlist(
                        "Dont play",
                        "https://d1e4pidl3fu268.cloudfront.net/8ecf7755-c342-43eb-b8ed-4bf0ddeaf0fb/ScreenShot20220909at32325PM.crop_658x493_43,0.preview.png",
                      ),
                      playlist(
                        "Corroded",
                        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/36da35144948753.6295d03ed3d84.jpg",
                      ),
                      playlist(
                        "Happiness",
                        "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/81eaa0135371915.621a60bc69b2f.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "favorite songs: ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            largeSong(
              "https://i.pinimg.com/originals/1d/67/86/1d67862d37e65d7b6a3b626b0d14ce04.jpg",
              "hello",
            ),
            largeSong(
              "https://mir-s3-cdn-cf.behance.net/project_modules/fs/6cb54b144948753.6295d03ed1ff1.jpg",
              "hate",
            ),
            largeSong(
              "https://th.bing.com/th/id/OIP.ok6hv4vhG8TcIjXu3uBx4QAAAA?rs=1&pid=ImgDetMain",
              "friendship",
            ),
            largeSong(
              "https://th.bing.com/th/id/OIP.aY50y9xS2-Fzsl5GukCM5gHaHa?w=700&h=700&rs=1&pid=ImgDetMain",
              "Dark",
            ),
          ],
        ),
      ),
    );
  }
}
