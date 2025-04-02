import 'package:flutter/material.dart';

Scaffold Page2(Map<String, String> pokemonList) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        "Details",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: Center(
            child: Hero(
              tag: pokemonList["url"]!,
              child: SizedBox(
                height: 300,
                child: Image.network(pokemonList["url"]!),
              ),
            ),
          ),
        ),
        Expanded(
          child: FractionallySizedBox(
            widthFactor: 0.9,
            heightFactor: 0.9,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 185, 223, 241),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 5, color: Colors.black),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Text(
                      pokemonList["name"]!,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description:",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 35, 0, 68),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            pokemonList["Description"]!,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Power:",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 237, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            pokemonList["Power"]!,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "HP:",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 132, 0, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            pokemonList["HP"]!,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
