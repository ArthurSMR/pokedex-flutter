import 'package:intl/intl.dart';

class Post {
  String user;
  int time;
  List<String> team;
  int likes;

  Post(String user, int time, List<String> team, int likes) {
    this.user = "@" + user;
    this.time = time;
    this.team = team;
    this.likes = likes;
  }

  String getDate() {
    DateFormat dateFormat = DateFormat("dd/MM/yy H:m");
    var date = new DateTime.fromMicrosecondsSinceEpoch(this.time * 1000);
    return dateFormat.format(date);
  }
}
