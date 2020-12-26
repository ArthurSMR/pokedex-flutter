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
                    return CircularProgressIndicator(
                      backgroundColor: Colors.black,
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
