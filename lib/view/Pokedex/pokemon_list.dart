import 'package:flutter/material.dart';
import '../../service/pokeapi_store.dart';
import '../../model/pokeapi.dart';
import 'pokemon_cell.dart';

class PokemonList extends StatefulWidget {
  List<Pokemon> pokemonList;
  PokemonList(this.pokemonList);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  PokemonCellView pokemonCellView = PokemonCellView();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.pokemonList.length,
      itemBuilder: (context, index) {
        var pokemon = this.widget.pokemonList[index];
        return Card(
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 72,
                  child: pokemonCellView.build(context, pokemon),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
