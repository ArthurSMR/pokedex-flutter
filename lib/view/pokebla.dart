import 'package:flutter/material.dart';
import 'pokemonCell.dart';

class PokeblaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: PokemonCellView.build(
            context,
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
            "Pikachu",
            "Elétrico"),
      ),
    ));
  }
}
