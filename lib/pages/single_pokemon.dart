// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/pokemon.dart';

class SinglePokemon extends StatefulWidget {
  const SinglePokemon({super.key});

  @override
  State<SinglePokemon> createState() => _SinglePokemonState();
}

class _SinglePokemonState extends State<SinglePokemon> {
  Pokemon poke = Pokemon(url: '');

  @override
  Widget build(BuildContext context) {
    poke = ModalRoute.of(context)!.settings.arguments as Pokemon;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${poke.name}'),
            Text('Url: ${poke.url}'),
          ],
        ),
      ),
    );
  }
}
