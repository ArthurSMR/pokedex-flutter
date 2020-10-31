import 'package:flutter/material.dart';

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Feed",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height * 0.0250),
                ),
              ),
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
                onPressed: () {},
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                                "@sinkoc",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "1min atrás",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF7D7D7D),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top:
                                  (MediaQuery.of(context).size.height * 0.0250),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/395.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/383.png"),
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
                              top:
                                  (MediaQuery.of(context).size.height * 0.0250),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/172.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/382.png"),
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
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Curtir",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.height *
                                          0.0125),
                                ),
                                Icon(Icons.thumb_up_outlined),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.height *
                                    0.0125),
                          ),
                          Text("52 curtidas", style: TextStyle(fontSize: 16))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
