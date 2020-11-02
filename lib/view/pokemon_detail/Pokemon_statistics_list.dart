import 'package:flutter/material.dart';
import 'statistics_type.dart';
import 'pokemon_statistics_cell.dart';
import '../../model/pokemon.dart';

class PokemonStatisticsList {
  final List<StatisticsType> statisticTypeList = [
    StatisticsType.Hp,
    StatisticsType.Attack,
    StatisticsType.Defense,
    StatisticsType.SpecialAttack,
    StatisticsType.SpecialDefense,
    StatisticsType.Speed,
  ];

  Pokemon pokemon;

  PokemonStatisticsList(this.pokemon);

  PokemonStatisticsCell pokemonStatisticsCell = PokemonStatisticsCell();

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statisticTypeList.length,
      itemBuilder: (context, index) {
        var type = statisticTypeList[index];
        return Card(
          elevation: 0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 32 / 640,
                  child: pokemonStatisticsCell.build(context, pokemon, type),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
