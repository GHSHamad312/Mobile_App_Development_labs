import 'package:flutter/material.dart';

class Song extends StatefulWidget {
  final name;
  const Song({super.key, this.name});

  @override
  State<Song> createState() {
    return SongWidgetState();
  }
}

class SongWidgetState extends State<Song> {
  bool clicked = false;

  toggle() {
    setState(() {
      clicked = !clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: double.infinity,
          height: clicked ? 200 : 80,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: clicked ? 1 : 0,
                      duration: Duration(milliseconds: 400),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Playing",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: TextButton(
                        onPressed: toggle,
                        child: Icon(
                          clicked ? Icons.pause : Icons.play_arrow,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
