import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pokemonCell.dart';

class PokeblaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Pokedex'),
              backgroundColor: Colors.transparent,
            )
          ];
        },
        body: Center(
          child: PokemonCellView.build(
              context,
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
              "Pikachu",
              "Elétrico"),
        ),
      ),
    );
  }
}

// child: PokemonCellView.build(
//     context,
//     'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
//     "Pikachu",
//     "Elétrico"),
