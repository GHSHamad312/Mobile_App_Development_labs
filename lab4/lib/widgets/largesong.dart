import "package:flutter/material.dart";

Align largeSong(String url, String name) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      height: 350,
      width: 360,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Image(image: NetworkImage(url), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
