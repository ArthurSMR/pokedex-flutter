import 'package:flutter/material.dart';
import 'feed.dart';

class PokeblaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
              color: Color(0xFF2C62A9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                child: Center(
                  child: Text(
                    "Perfil",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedView(),
                    ));
              }),
        ),
      ),
    );
  }
}
