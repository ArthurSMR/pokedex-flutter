import 'package:flutter/material.dart';
import 'package:pokebla/view/pokemon_detail/statistics_type.dart';
import 'statistics_type.dart';
import '../../model/pokemon.dart';

class PokemonStatisticsCell {
  Scaffold build(
      BuildContext context, Pokemon pokemon, StatisticsType statisticsType) {
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
            Text(statisticsType.name),
            Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: statisticsType.color(
                    int.parse(pokemon.statistics.getValueFor(statisticsType))),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              width: MediaQuery.of(context).size.width * 92 / 640,
              height: MediaQuery.of(context).size.width * 40 / 640,
              child: Center(
                child: Text(
                  pokemon.statistics.getValueFor(statisticsType),
                  style: TextStyle(
                    color: Colors.white,
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
