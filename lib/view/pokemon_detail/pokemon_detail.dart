import 'package:flutter/material.dart';
import 'package:pokebla/model/pokemon.dart';
import 'Pokemon_statistics_list.dart';

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
                        height: 104,
                        width: 104,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(pokemon.imageURL),
                          ),
                          borderRadius: BorderRadius.circular(52.0),
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
}
