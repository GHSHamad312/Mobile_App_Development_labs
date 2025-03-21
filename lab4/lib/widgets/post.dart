import "package:flutter/material.dart";

SizedBox post(String posturl, String profileurl, String username) {
  return SizedBox(
    width: double.infinity,
    height: 330,
    child: Column(
      children: [
        Row(
          children: [
            CircleAvatar(foregroundImage: NetworkImage(posturl)),
            Padding(padding: EdgeInsets.only(left: 10), child: Text(username)),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Image(image: NetworkImage(profileurl), fit: BoxFit.cover),
        ),
      ],
    ),
  );
}
