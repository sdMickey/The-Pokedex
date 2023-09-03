import 'package:flutter/material.dart';
import 'package:the_pokedex_app/pages/home.dart';
import 'package:the_pokedex_app/pages/loading.dart';
import 'package:the_pokedex_app/pages/single_pokemon.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/loading': (context) => Loading(),
      '/single_pokemon': (context) => SinglePokemon(),
    },
  ));
}
