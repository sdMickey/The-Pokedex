// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:http/http.dart';
import 'dart:convert';

class PokemonList {
  late String url;
  late List list = [];
  // late String pokemonUrl;

  PokemonList({required this.url});

  Future<void> getPokemonList() async {
    try {
      Response pokemonListResponse = await get(Uri.parse(url));
      Map pokemonListMap = jsonDecode(pokemonListResponse.body);
      // print(pokemonListMap);

      list = pokemonListMap['results'];

      for (var i = 0; i < list.length; i++) {
        Response _pokeUrlResponse = await get(Uri.parse(list[i]['url']));
        Map _poke = jsonDecode(_pokeUrlResponse.body);
        list[i]['id'] = _poke['id'];
        list[i]['sprite'] = _poke['sprites']['front_default'];
      }

      print('list = $list');
    } catch (e) {
      // ignore: avoid_print
      print('caught error: $e');

      list = [];
    }
  }
}
