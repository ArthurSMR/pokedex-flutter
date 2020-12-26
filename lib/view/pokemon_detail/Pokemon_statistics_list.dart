import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokebla/service/pokeapiv2_store.dart';
import 'statistics_type.dart';
import 'pokemon_statistics_cell.dart';
import '../../model/pokeapi.dart';

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
  PokeApiV2Store pokeApiV2Store;

  PokemonStatisticsList(Pokemon pokemon) {
    this.pokemon = pokemon;
    pokeApiV2Store = PokeApiV2Store();
    pokeApiV2Store.fetchPokemonDetails(pokemon.name);
  }

  PokemonStatisticsCell pokemonStatisticsCell = PokemonStatisticsCell();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
              child: Observer(
            name: "PokemonDetail",
            builder: (BuildContext context) {
              return (pokeApiV2Store.pokeAPI != null)
                  ? ListView.builder(
                      itemCount: statisticTypeList.length,
                      itemBuilder: (context, index) {
                        var type = statisticTypeList[index];
                        return Card(
                          elevation: 0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      32 /
                                      640,
                                  child: pokemonStatisticsCell.build(context,
                                      pokeApiV2Store.pokeAPI, type, index),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.black,
                      ),
                    );
            },
          ))
        ],
      ),
    );
  }
}
