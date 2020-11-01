import 'package:flutter/material.dart';
import '../../model/post.dart';

class FeedCellView {
  static Scaffold build(BuildContext context, Post post) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.0125),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height * 0.0250),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        post.user,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        post.time,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7D7D7D),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height * 0.0250),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[0]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[1]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[2]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height * 0.0250),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[3]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[4]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(post.team[5]),
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  FlatButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {
                      print("Curtir post do ${post.user}");
                    },
                    child: Row(
                      children: [
                        Text(
                          "Curtir",
                          style: TextStyle(fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.height * 0.0125),
                        ),
                        Icon(Icons.thumb_up_outlined),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.0125),
                  ),
                  Text(post.likes.toString(), style: TextStyle(fontSize: 16)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
