class Post {
  String user;
  String time;
  List<String> team;
  int likes;

  Post(String user, String time, List<String> team, int likes) {
    this.user = "@" + user;
    this.time = time;
    this.team = team;
    this.likes = likes;
  }
}
