import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import 'pokemonCell.dart';

class PokemonList extends StatefulWidget {
  final List<Pokemon> pokemons;

  PokemonList(this.pokemons);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.pokemons.length,
      itemBuilder: (context, index) {
        var pokemon = this.widget.pokemons[index];
        return Card(
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 72,
                  child: PokemonCellView.build(context, pokemon),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
