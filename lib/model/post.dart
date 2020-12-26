import 'package:intl/intl.dart';
import '../dao/database.dart';

class Post {
  String id;
  String user;
  int time;
  List<String> team;
  int likes = 0;

  Post({String id, String user, int time, List<String> team, int likes}) {
    this.id = id;
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

  like() async {
    var successful = await incrementLike(this.id);

    if (successful) {
      this.likes += 1;
      print("Post curtido ${this.id}");
    } else {
      print("Falha ao curtir post com id: " + this.id);
    }
  }
}
