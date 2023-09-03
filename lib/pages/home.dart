// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:the_pokedex_app/services/constant_pokemon_list.dart';
import 'package:the_pokedex_app/services/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pokeList = pokemonListAll;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: pokeList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (16 / 10),
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            String type1 = '';
            String type2 = '';
            Color type1BgColor = Colors.transparent;
            Color type2BgColor = Colors.transparent;
            Color typeTextColor = Colors.black;
            if (pokeList[index]['types'].length == 1) {
              type1 = pokeList[index]['types'][0].toString();
              if (type1 == 'fairy') {
                type1BgColor = bgFairy;
                typeTextColor = Colors.white;
              } else if (type1 == 'ice') {
                type1BgColor = bgIce;
                typeTextColor = Colors.white;
              } else if (type1 == 'steel') {
                type1BgColor = bgSteel;
                typeTextColor = Colors.white;
              } else if (type1 == 'bug') {
                type1BgColor = bgBug;
                typeTextColor = Colors.white;
              } else if (type1 == 'poison') {
                type1BgColor = bgPoison;
                typeTextColor = Colors.white;
              } else if (type1 == 'rock') {
                type1BgColor = bgRock;
                typeTextColor = Colors.white;
              } else if (type1 == 'electric') {
                type1BgColor = bgElectric;
                typeTextColor = Colors.white;
              } else if (type1 == 'fighting') {
                type1BgColor = bgFighting;
                typeTextColor = Colors.white;
              } else if (type1 == 'ghost') {
                type1BgColor = bgGhost;
                typeTextColor = Colors.white;
              } else if (type1 == 'flying') {
                type1BgColor = bgFlying;
                typeTextColor = Colors.white;
              } else if (type1 == 'ground') {
                type1BgColor = bgGround;
                typeTextColor = Colors.white;
              } else if (type1 == 'psychic') {
                type1BgColor = bgPsychic;
                typeTextColor = Colors.white;
              } else if (type1 == 'fire') {
                type1BgColor = bgFire;
                typeTextColor = Colors.white;
              } else if (type1 == 'water') {
                type1BgColor = bgWater;
                typeTextColor = Colors.white;
              } else if (type1 == 'dark') {
                type1BgColor = bgDark;
                typeTextColor = Colors.white;
              } else if (type1 == 'dragon') {
                type1BgColor = bgDragon;
                typeTextColor = Colors.white;
              } else if (type1 == 'grass') {
                type1BgColor = bgGrass;
                typeTextColor = Colors.white;
              } else if (type1 == 'normal') {
                type1BgColor = bgNormal;
                typeTextColor = Colors.white;
              }
              type1 = type1[0].toUpperCase() + type1.substring(1).toLowerCase();
            }
            if (pokeList[index]['types'].length == 2) {
              type1 = pokeList[index]['types'][0];
              if (type1 == 'fairy') {
                type1BgColor = bgFairy;
                typeTextColor = Colors.white;
              } else if (type1 == 'ice') {
                type1BgColor = bgIce;
                typeTextColor = Colors.white;
              } else if (type1 == 'steel') {
                type1BgColor = bgSteel;
                typeTextColor = Colors.white;
              } else if (type1 == 'bug') {
                type1BgColor = bgBug;
                typeTextColor = Colors.white;
              } else if (type1 == 'poison') {
                type1BgColor = bgPoison;
                typeTextColor = Colors.white;
              } else if (type1 == 'rock') {
                type1BgColor = bgRock;
                typeTextColor = Colors.white;
              } else if (type1 == 'electric') {
                type1BgColor = bgElectric;
                typeTextColor = Colors.white;
              } else if (type1 == 'fighting') {
                type1BgColor = bgFighting;
                typeTextColor = Colors.white;
              } else if (type1 == 'ghost') {
                type1BgColor = bgGhost;
                typeTextColor = Colors.white;
              } else if (type1 == 'flying') {
                type1BgColor = bgFlying;
                typeTextColor = Colors.white;
              } else if (type1 == 'ground') {
                type1BgColor = bgGround;
                typeTextColor = Colors.white;
              } else if (type1 == 'psychic') {
                type1BgColor = bgPsychic;
                typeTextColor = Colors.white;
              } else if (type1 == 'fire') {
                type1BgColor = bgFire;
                typeTextColor = Colors.white;
              } else if (type1 == 'water') {
                type1BgColor = bgWater;
                typeTextColor = Colors.white;
              } else if (type1 == 'dark') {
                type1BgColor = bgDark;
                typeTextColor = Colors.white;
              } else if (type1 == 'dragon') {
                type1BgColor = bgDragon;
                typeTextColor = Colors.white;
              } else if (type1 == 'grass') {
                type1BgColor = bgGrass;
                typeTextColor = Colors.white;
              } else if (type1 == 'normal') {
                type1BgColor = bgNormal;
                typeTextColor = Colors.white;
              }
              type1 = type1[0].toUpperCase() + type1.substring(1).toLowerCase();

              type2 = pokeList[index]['types'][1];
              if (type2 == 'fairy') {
                type2BgColor = bgFairy;
                typeTextColor = Colors.white;
              } else if (type2 == 'ice') {
                type2BgColor = bgIce;
                typeTextColor = Colors.white;
              } else if (type2 == 'steel') {
                type2BgColor = bgSteel;
                typeTextColor = Colors.white;
              } else if (type2 == 'bug') {
                type2BgColor = bgBug;
                typeTextColor = Colors.white;
              } else if (type2 == 'poison') {
                type2BgColor = bgPoison;
                typeTextColor = Colors.white;
              } else if (type2 == 'rock') {
                type2BgColor = bgRock;
                typeTextColor = Colors.white;
              } else if (type2 == 'electric') {
                type2BgColor = bgElectric;
                typeTextColor = Colors.white;
              } else if (type2 == 'fighting') {
                type2BgColor = bgFighting;
                typeTextColor = Colors.white;
              } else if (type2 == 'ghost') {
                type2BgColor = bgGhost;
                typeTextColor = Colors.white;
              } else if (type2 == 'flying') {
                type2BgColor = bgFlying;
                typeTextColor = Colors.white;
              } else if (type2 == 'ground') {
                type2BgColor = bgGround;
                typeTextColor = Colors.white;
              } else if (type2 == 'psychic') {
                type2BgColor = bgPsychic;
                typeTextColor = Colors.white;
              } else if (type2 == 'fire') {
                type2BgColor = bgFire;
                typeTextColor = Colors.white;
              } else if (type2 == 'water') {
                type2BgColor = bgWater;
                typeTextColor = Colors.white;
              } else if (type2 == 'dark') {
                type2BgColor = bgDark;
                typeTextColor = Colors.white;
              } else if (type2 == 'dragon') {
                type2BgColor = bgDragon;
                typeTextColor = Colors.white;
              } else if (type2 == 'grass') {
                type2BgColor = bgGrass;
                typeTextColor = Colors.white;
              } else if (type2 == 'normal') {
                type2BgColor = bgNormal;
                typeTextColor = Colors.white;
              }
              type2 = type2[0].toUpperCase() + type2.substring(1).toLowerCase();
            }

            String pokeName = pokeList[index]['name'].toString();
            pokeName =
                pokeName[0].toUpperCase() + pokeName.substring(1).toLowerCase();

            Widget type2Widget() {
              if (type2 != '') {
                return Container(
                  // color: bgGrass,
                  decoration: BoxDecoration(
                    color: type2BgColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.5),
                    child: Text(
                      type2,
                      style: TextStyle(
                        color: typeTextColor,
                      ),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            }

            return Card(
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 20,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image(
                          image: NetworkImage(pokeList[index]['sp_sprite'] ??
                              pokeList[index]['sprite']),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pokeName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('#${pokeList[index]['id']}'),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            // color: bgGrass,
                            decoration: BoxDecoration(
                              color: type1BgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.5),
                              child: Text(
                                type1,
                                style: TextStyle(
                                  color: typeTextColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          type2Widget(),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: TextButton(
                      onPressed: () {
                        print('you tapped ${pokeList[index]['name']}');
                        Navigator.pushNamed(context, '/loading',
                            arguments: pokeList[index]['url']);
                      },
                      onLongPress: () {
                        print('you long pressed ${pokeList[index]['name']}');
                        Flushbar(
                          messageText: Text(
                            '#${pokeList[index]['id']}: ${pokeList[index]['name']}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          duration: Duration(seconds: 3),
                          animationDuration: Duration(milliseconds: 500),
                          flushbarStyle: FlushbarStyle.FLOATING,
                          margin: EdgeInsets.fromLTRB(60, 20, 60, 20),
                          borderRadius: BorderRadius.circular(8),
                        ).show(context);
                      },
                      child: Text(''),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
