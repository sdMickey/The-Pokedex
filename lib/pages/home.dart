// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/pokemon_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pokeList = [];

  void getPokeList() async {
    PokemonList pokemonList =
        PokemonList(url: 'https://pokeapi.co/api/v2/pokemon/?limit=10');
    await pokemonList.getPokemonList();
    setState(() {
      pokeList = pokemonList.list;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getPokeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pokeList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print(
                    'you tapped #${pokeList[index]['id']}: ${pokeList[index]['name']}');
              },
              onLongPress: () {
                print('you long pressed ${pokeList[index]['name']}');
              },
              title:
                  Text('#${pokeList[index]['id']}: ${pokeList[index]['name']}'),
              trailing: Image(
                image: NetworkImage(pokeList[index]['sprite']),
              ),
            ),
          );
        },
      ),
    );
  }
}
