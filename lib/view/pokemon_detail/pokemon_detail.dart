import 'package:flutter/material.dart';
import 'package:pokebla/model/pokeapi.dart';
import 'Pokemon_statistics_list.dart';
import '../../dao/database.dart';

class PokemonDetail {
  mainBottomSheet(BuildContext context, Pokemon pokemon,
      bool pokemonAlreadyAtTeam, bool canAddMoreToTeam) {
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
              padding: EdgeInsets.only(top: 16, left: 0, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 16)),
                        Text(
                          (pokemon.name),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 24,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 104 / 640,
                        width: MediaQuery.of(context).size.height * 104 / 640,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(pokemon.img),
                          ),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 104 / 640),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(18),
                          topRight: const Radius.circular(18),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Estatísticas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Expanded(
                            child:
                                PokemonStatisticsList(pokemon).build(context),
                          ),
                          (pokemonAlreadyAtTeam)
                              ? ButtonTheme(
                                  minWidth: MediaQuery.of(context).size.width -
                                      32 / 640,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    color: Colors.grey,
                                    child: Text(
                                      pokemon.name +
                                          " já foi adicionado à sua equipe",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              : ButtonTheme(
                                  minWidth: MediaQuery.of(context).size.width -
                                      32 / 640,
                                  child: RaisedButton(
                                    onPressed: () {
                                      if (canAddMoreToTeam) {
                                        print(canAddMoreToTeam.toString());
                                        addPokemonToTeam(
                                            pokemon.name.toLowerCase());
                                        Navigator.pop(context);
                                      } else {
                                        print("else");
                                        showAlertDialog(context);
                                      }
                                    },
                                    textColor: Colors.white,
                                    color: Color(0xFF2C62A9),
                                    child: Text(
                                      'Adicionar à equipe',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Sua equipe está cheia"),
      content: Text(
          "Você só pode ter até 6 pokemons na sua equipe. Para editar sua equipe, entre no seu perfil."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
