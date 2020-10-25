import 'package:flutter/material.dart';

class PokemonCellView {
  static ListTile build(BuildContext context, String imageURL,
      String pokemonName, String pokemonType) {
    return ListTile(
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
            image: NetworkImage(imageURL),
          ),
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
        ),
      ),
      title: Text(
        pokemonName,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        pokemonType,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
