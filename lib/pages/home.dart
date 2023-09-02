import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:the_pokedex_app/services/pokemon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Pokemon poke;

  void getPoke() async {
    Pokemon poke = Pokemon(url: 'https://pokeapi.co/api/v2/pokemon/25');
    poke.getPokemon();
  }

  @override
  void initState() {
    getPoke();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
