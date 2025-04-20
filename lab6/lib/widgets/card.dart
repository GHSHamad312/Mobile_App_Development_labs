import "package:flutter/material.dart";
import "package:lab6/pages/cart_page.dart";

Card cards(BuildContext context, Map data) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data["name"]),
          Hero(
            tag: data["name"],
            child: Text(
              "\$${data["price"]}",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => cartpage(context, data),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text("place order"),
          ),
        ],
      ),
    ),
  );
}
