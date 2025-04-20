import "package:flutter/material.dart";

Scaffold cartpage(BuildContext context, Map data) {
  return Scaffold(
    appBar: AppBar(title: Center(child: Text("Confirm Order"))),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: 500,
            height: 750,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(167, 160, 160, 160),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 60),
                  child: Text(
                    "Your order is a ${data["name"]}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    "The Price is: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Hero(
                  tag: data["name"],
                  child: Text(
                    "\$${data["price"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text("Proceed to pay"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 0, 0),
                  ),
                  child: Text("cancel order"),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
