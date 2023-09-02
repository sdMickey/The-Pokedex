import 'package:http/http.dart';
import 'dart:convert';

class Pokemon {
  late String url;
  late String name;
  late int id;
  late int height;
  late int weight;
  late List types = [];
  late int hp;
  late int attack;
  late int defense;
  late int speed;
  late String spriteUrl;
  late String speciesUrl;
  late String evolutionChainUrl;
  late List evolutionChain = [];

  Pokemon({
    required this.url,
  });

  Future<void> getPokemon() async {
    try {
      Response pokemonResponse = await get(Uri.parse(url));
      Map pokemon = jsonDecode(pokemonResponse.body);
      // print(pokemon);

      name = pokemon['name'];
      id = pokemon['id'];
      height = pokemon['height'];
      weight = pokemon['weight'];

      for (var i = 0; i < pokemon['types'].length; i++) {
        types.add(pokemon['types'][i]['type']['name']);
      }

      hp = pokemon['stats'][0]['base_stat'];
      attack = pokemon['stats'][1]['base_stat'];
      defense = pokemon['stats'][2]['base_stat'];
      speed = pokemon['stats'][5]['base_stat'];

      spriteUrl = pokemon['sprites']['front_default'];

      speciesUrl = pokemon['species']['url'];
      Response pokemonSpeciesResponse = await get(Uri.parse(speciesUrl));
      Map pokemonSpecies = jsonDecode(pokemonSpeciesResponse.body);

      evolutionChainUrl = pokemonSpecies['evolution_chain']['url'];
      Response pokemonEvolutionResponse =
          await get(Uri.parse(evolutionChainUrl));
      Map pokemonEvolution = jsonDecode(pokemonEvolutionResponse.body)['chain'];

      void addEvolutionChain(Map pokemonEvolutionMap) {
        evolutionChain.add(pokemonEvolutionMap['species']['name']);
        if (pokemonEvolutionMap['evolves_to'].length > 0) {
          return addEvolutionChain(pokemonEvolutionMap['evolves_to'][0]);
        }
      }

      addEvolutionChain(pokemonEvolution);

      print(
          'name = $name \nid = $id \nheight = $height \nweight = $weight \ntypes = $types \nhp = $hp');
      print(
          'attack = $attack \ndefense = $defense \nspeed = $speed \nspriteUrl = $spriteUrl \nspeciesUrl = $speciesUrl');
      print(
          'evolutionChainUrl = $evolutionChainUrl \nevolutionChain = $evolutionChain');
    } catch (e) {
      // ignore: avoid_print
      print('caught error: $e');
    }
  }
}
