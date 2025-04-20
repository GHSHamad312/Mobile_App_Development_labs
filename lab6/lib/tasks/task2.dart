import "package:flutter/material.dart";

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 200, 255),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            width: 370,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(109, 0, 0, 0),
                  blurRadius: 30,
                  spreadRadius: 3,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.RPPM8J7XkvF_uA5zPpAP1gHaLH?w=202&h=303&c=7&r=0&o=5&dpr=1.1&pid=1.7",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Hamad Ali Shah",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 27, 0, 46),
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 170, 100, 208),
                    fontSize: 20,
                    letterSpacing: -0.4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Flutter developer who loves turning creative ideas into clean, functional apps. Whether it's designing sleek UIs or building smooth user experiences",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 27, 0, 46),
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Message me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue, size: 29),
                    Icon(Icons.email, color: Colors.green, size: 29),
                    Icon(Icons.phone, color: Colors.purple, size: 29),
                    Icon(
                      Icons.message,
                      color: const Color.fromARGB(255, 175, 76, 86),
                      size: 29,
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
