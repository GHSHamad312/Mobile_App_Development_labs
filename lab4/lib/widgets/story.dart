import "package:flutter/material.dart";

Padding story(String url, double? padleft, double? padright) {
  return Padding(
    padding: EdgeInsets.only(left: padleft ?? 5, right: padright ?? 5),
    child: CircleAvatar(foregroundImage: NetworkImage(url), radius: 30),
  );
}
