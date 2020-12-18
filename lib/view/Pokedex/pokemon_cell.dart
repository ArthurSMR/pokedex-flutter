import 'package:flutter/material.dart';
import 'package:pokebla/model/pokeapiv2.dart';
// import 'package:pokebla/model/pokemon.dart';
import '../../model/pokeapi.dart';
import '../pokemon_detail/pokemon_detail.dart';

class PokemonCellView {
  PokemonDetail pokemonDetail = PokemonDetail();
  Scaffold build(BuildContext context, Pokemon pokemon) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          onTap: () {
            pokemonDetail.mainBottomSheet(context, pokemon);
          },
          selected: true,
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
          ),
          leading: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: NetworkImage(pokemon.img),
              ),
              borderRadius: BorderRadius.circular(32.0),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            ),
          ),
          title: Text(
            pokemon.name,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            pokemon.type[0],
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
