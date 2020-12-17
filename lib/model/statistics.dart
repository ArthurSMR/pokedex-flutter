import 'package:meta/meta.dart';
import 'package:pokebla/view/pokemon_detail/statistics_type.dart';

class Statistics {
  int hp;
  int attack;
  int defense;
  int specialAttack;
  int specialDefense;
  int speed;

  Statistics(
      {@required int hp,
      @required int attack,
      @required int defense,
      @required int specialAttack,
      @required int specialDefense,
      @required int speed}) {
    this.hp = hp;
    this.attack = attack;
    this.defense = defense;
    this.specialAttack = specialAttack;
    this.specialDefense = specialDefense;
    this.speed = speed;
  }

  String getValueFor(StatisticsType type) {
    switch (type) {
      case StatisticsType.Hp:
        return hp.toString();
      case StatisticsType.Attack:
        return attack.toString();
      case StatisticsType.Defense:
        return defense.toString();
      case StatisticsType.SpecialAttack:
        return specialAttack.toString();
      case StatisticsType.SpecialDefense:
        return specialDefense.toString();
      case StatisticsType.Speed:
        return speed.toString();
      default:
        return "Type not found";
        break;
    }
  }
}
