// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/constant_pokemon_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pokeList = pokemonListAll;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pokeList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print('you tapped ${pokeList[index]['name']}');
                Navigator.pushNamed(context, '/loading',
                    arguments: pokeList[index]['url']);
              },
              onLongPress: () {
                print('you long pressed ${pokeList[index]['name']}');
              },
              title: Text(
                  '#${pokeList[index]['id']}: ${pokeList[index]['name']} ${pokeList[index]['types']}'),
              trailing: Image(
                image: NetworkImage(
                    pokeList[index]['sp_sprite'] ?? pokeList[index]['sprite']),
              ),
            ),
          );
        },
      ),
    );
  }
}
