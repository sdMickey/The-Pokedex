import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/constants.dart';
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
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: ${poke.name}',
            style: const TextStyle(
              fontFamily: 'Red Hat Text',
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          Text('Url: ${poke.url}'),
          Text('Evolution Chain: ${poke.evolutionChain}'),
        ],
      ),
    );
  }
}
