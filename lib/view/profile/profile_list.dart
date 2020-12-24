import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../dao/database.dart';
import '../../model/pokeapi.dart';
import '../Pokedex/pokemon_cell.dart';
import '../../service/pokeapi_store.dart';

class PokemonList extends StatefulWidget {
  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  PokemonCellView pokemonCellView = PokemonCellView();
  PokeApiStore api;

  @override
  void initState() {
    super.initState();
    api = PokeApiStore();
    api.fetchPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      name: "Team",
      builder: (BuildContext context) {
        if (api.pokeAPI != null && api.pokeList == null) {
          getFirebaseTeam().then((firebaseTeam) {
            api.getTeam(firebaseTeam);
          });
        }
        return (api.pokeList != null)
            ? teamListInformation()
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
              );
      },
    );
  }

  Widget contructList(List<Pokemon> pokemons) {
    return ListView.builder(
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        var pokemon = pokemons[index];
        return Dismissible(
          direction: DismissDirection.endToStart,
          key: UniqueKey(),
          onDismissed: (direction) {
            removePokemonFromTeam(pokemons[index].name.toLowerCase());
            setState(() {
              pokemons.removeAt(index);
            });

            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("${pokemon.name} foi deletado")));
          },
          background: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Icon(
              Icons.delete_forever_sharp,
              color: Colors.white,
            ),
            color: Colors.red,
          ),
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

  Widget teamListInformation() {
    if (api.pokeList.length != 0) {
      return contructList(api.pokeList);
    } else {
      return Center(
        child: Text(
          "O seu time está vazio, adicione \nPokemons a sua equipe!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      );
    }
  }
}
