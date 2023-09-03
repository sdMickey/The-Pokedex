// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/pokemon.dart';

class SinglePokemon extends StatefulWidget {
  const SinglePokemon({super.key});

  @override
  State<SinglePokemon> createState() => _SinglePokemonState();
}

class _SinglePokemonState extends State<SinglePokemon> {
  String pokeName = 'null';

  void getPoke() async {
    Pokemon poke = Pokemon(url: 'https://pokeapi.co/api/v2/pokemon/25');
    await poke.getPokemon();
    print('hmm, ${poke.name}');
    setState(() {
      pokeName = poke.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pokeName),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pokeName = 'loading';
                });
                getPoke();
              },
              child: const Text('press me'),
            ),
          ],
        ),
      ),
    );
  }
}
