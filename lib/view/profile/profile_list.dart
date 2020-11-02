import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../Pokedex/pokemon_cell.dart';

class PokemonList extends StatefulWidget {
  final List<Pokemon> pokemons;

  PokemonList(this.pokemons);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  PokemonCellView pokemonCellView = PokemonCellView();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.pokemons.length,
      itemBuilder: (context, index) {
        var pokemon = this.widget.pokemons[index];
        return Dismissible(
          key: Key(pokemon.toString()),
          onDismissed: (direction) {
            setState(() {
              this.widget.pokemons.removeAt(index);
            });

            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("${pokemon.name} deleted")));
          },
          background: Container(color: Colors.red),
          child: Card(
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
          ),
        );
      },
    );
  }
}
