import 'package:flutter/material.dart';

Card pokemoname(Map<String, String> pokemonList) {
  return Card(
    child: Column(
      children: [
        Hero(
          tag: pokemonList["url"]!,
          child: SizedBox(
            height: 300,
            child: Image.network(pokemonList["url"]!),
          ),
        ),
        SizedBox(
          child: Text(
            pokemonList["name"]!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
