import '../model/post.dart';
import 'database_team.dart';

class PostData {
  static List<Post> mockPosts() {
    List<Post> array = [];

    Post post1 = new Post("Feggah", "2h atrás", Team.mockPostTeam(), 13);

    array.add(post1);

    Post post2 = new Post("arthur_smr", "3h atrás", Team.mockPostTeam(), 52);
    array.add(post2);
    return array;
  }
}
