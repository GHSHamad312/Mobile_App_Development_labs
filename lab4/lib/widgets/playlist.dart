import "package:flutter/material.dart";

ClipRRect playlist(String name, String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 70,
      width: 190,
      color: const Color.fromARGB(255, 70, 70, 70),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 60,
                height: 60,
                child: Image(image: NetworkImage(url), fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    ),
  );
}
