import 'package:flutter/material.dart';
import 'package:pokebla/model/pokemon.dart';

class PokemonDetail {
  mainBottomSheet(BuildContext context, Pokemon pokemon) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10),
          topRight: const Radius.circular(10),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: (MediaQuery.of(context).size.height / 10) * 9,
              padding: EdgeInsets.only(top: 16, left: 16, right: 8),
              child: Center(
                child: Text(pokemon.name),
              ),
            );
          },
        );
      },
    );
  }
}
