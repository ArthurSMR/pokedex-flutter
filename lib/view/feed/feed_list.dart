import 'package:flutter/material.dart';
import '../../model/post.dart';
import 'feed_cell.dart';

class PostList extends StatefulWidget {
  final List<Post> posts;
  PostList(this.posts);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.posts.length,
      itemBuilder: (context, index) {
        var post = this.widget.posts[index];
        return Card(
          elevation: 0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.42,
                child: FeedCellView.build(context, post),
              ),
            ],
          ),
        );
      },
    );
  }
}
