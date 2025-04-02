import "package:flutter/material.dart";
import "package:lab5/screens/task3_screen2.dart";
import "package:lab5/widgets/list.dart";
import "package:lab5/widgets/pokemon.dart";

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokemon Card Info")),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[0])),
              );
            },
            child: pokemoname(pokemonList[0]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[1])),
              );
            },
            child: pokemoname(pokemonList[1]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[2])),
              );
            },
            child: pokemoname(pokemonList[2]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[3])),
              );
            },
            child: pokemoname(pokemonList[3]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[4])),
              );
            },
            child: pokemoname(pokemonList[4]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[5])),
              );
            },
            child: pokemoname(pokemonList[5]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2(pokemonList[6])),
              );
            },
            child: pokemoname(pokemonList[6]),
          ),
        ],
      ),
    );
  }
}
