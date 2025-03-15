import "package:flutter/material.dart";

class Hamad extends StatelessWidget {
  const Hamad({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text(
              "lab # 3",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              width: double.infinity,
              height: 200,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 40, 255, 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image(
                          image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.yBhd1Wy_xXRgE20WL3X2LQHaEK?rs=1&pid=ImgDetMain",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 370,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      top: 50,
                      child: Container(
                        color: Color.fromRGBO(0, 0, 255, 1),
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 120,
                      child: Container(
                        width: 130,
                        height: 130,
                        color: Color.fromRGBO(0, 255, 0, 1),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      right: 100,
                      child: Container(
                        color: Color.fromRGBO(255, 0, 0, 1),
                        width: 100,
                        height: 270,
                        child: Center(
                          child: Column(
                            children: [
                              for (int i = 1; i < 10; i++)
                                Text(
                                  "$i",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 15, left: 15, bottom: 20),
                child: Text(
                  "PRACTICE MORE THEN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN",
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Color.fromRGBO(0, 140, 0, 1),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "leading",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 10),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/OIP.OL6Yre1mLZ3d2eG2v8cfnQHaEB?rs=1&pid=ImgDetMain",
                          ),
                        ),
                      ),
                      Text(
                        "Trailing",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
