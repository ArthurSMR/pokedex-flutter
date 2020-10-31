import 'package:flutter/material.dart';
import 'package:pokebla/model/pokemon.dart';

class PokemonCellView {
  static Scaffold build(BuildContext context, Pokemon pokemon) {
    return Scaffold(
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          onTap: () {},
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
                image: NetworkImage(pokemon.imageURL),
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
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            pokemon.type,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
