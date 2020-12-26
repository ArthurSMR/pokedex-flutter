import 'package:flutter/material.dart';
import 'feed_list.dart';
import '../../dao/database.dart';

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Feed"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
              color: Color(0xFF2C62A9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Compartilhe sua equipe!",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                // shareOwnTeam();
                getFirebaseTeam().then((team) {
                  if (team.length == 6) {
                    shareOwnTeam(team);
                  } else {
                    showAlertDialog(context);
                  }
                });
                print("Compartilhar equipe");
              },
            ),
            FutureBuilder(
                future: getPosts(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: PostList(snapshot.data),
                    );
                  } else {
                    return Expanded(
                      child: Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        ),
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
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
      title: Text("Sua equipe está incompleta"),
      content: Text(
          "Para você compartilhar, você precisa ter 6 pokemons adicionados."),
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
