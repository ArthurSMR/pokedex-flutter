import 'package:flutter/material.dart';
import 'package:pokebla/view/pokemon_detail/statistics_type.dart';
import 'statistics_type.dart';
import '../../model/pokeapiv2.dart';

class PokemonStatisticsCell {
  Scaffold build(BuildContext context, PokeApiV2 pokemon,
      StatisticsType statisticsType, int index) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          children: [
            Image(
              image: statisticsType.image,
              height: MediaQuery.of(context).size.height,
            ),
            Padding(padding: EdgeInsets.only(right: 8)),
            Text(
              statisticsType.name,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16.0,
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: statisticsType.color(pokemon.stats[index].baseStat),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              width: MediaQuery.of(context).size.width * 92 / 640,
              height: MediaQuery.of(context).size.width * 40 / 640,
              child: Center(
                child: Text(
                  pokemon.stats[index].baseStat.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
