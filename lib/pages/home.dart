// ignore_for_file: prefer_const_constructors, avoid_print, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/constant_pokemon_list.dart';
import 'package:the_pokedex_app/services/pokemon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pokeList = pokemonListAll;

  // Pokemon poke = Pokemon(url: '');
  // void getPoke(pokemonUrl) async {
  //   Pokemon _poke = Pokemon(url: pokemonUrl);
  //   await _poke.getPokemon();
  //   // print('hmm, ${_poke.name}');
  //   setState(() {
  //     poke = _poke;
  //   });

  //   // ignore: use_build_context_synchronously
  //   Navigator.pushNamed(context, '/single_pokemon', arguments: poke);
  // }

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
                // getPoke(pokeList[index]['url']);
              },
              onLongPress: () {
                print('you long pressed ${pokeList[index]['name']}');
              },
              title: Text(
                  '#${pokeList[index]['id']}: ${pokeList[index]['name']} ${pokeList[index]['types']}'),
              trailing: Image(
                image: NetworkImage(pokeList[index]['sprite']),
                // image: NetworkImage(
                //     'https://img.pokemondb.net/sprites/home/normal/bulbasaur.png'),
              ),
            ),
          );
        },
      ),
    );
  }
}
