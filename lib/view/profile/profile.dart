import 'package:flutter/material.dart';
import '../../model/pokemon.dart';
import '../../mock/database_team.dart';
import 'profile_list.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<Pokemon> pokemons = Team.mockProfileTeam();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Perfil"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage("Assets/gabriel.jpg"),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "52",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Curtidas",
                              style: TextStyle(
                                  color: Color(0xFF6C6C6C), fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1),
                        ),
                        Text(
                          "@feggah",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.0375),
            ),
            Text(
              "Minha equipe (${pokemons.length}/6)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: PokemonList(this.pokemons),
            ),
          ],
        ),
      ),
    );
  }
}
