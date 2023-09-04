// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/pokemon.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String url = '';

  Pokemon poke = Pokemon(url: '');
  void getPoke(pokemonUrl) async {
    Pokemon _poke = Pokemon(url: pokemonUrl);
    await _poke.getPokemon();
    // print('hmm, ${_poke.name}');
    setState(() {
      poke = _poke;
    });

    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/single_pokemon', arguments: poke);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      url = ModalRoute.of(context)!.settings.arguments as String;
    });

    getPoke(url);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.black,
                size: 100,
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text('Loading details...'),
            ),
          ],
        ),
      ),
    );
  }
}
