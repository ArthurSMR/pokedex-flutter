import 'package:meta/meta.dart';
import 'package:pokebla/view/pokemon_detail/statistics_type.dart';

class Statistics {
  int hp;
  int attack;
  int defense;
  int special_attack;
  int special_defense;
  int speed;

  Statistics(
      {@required int hp,
      @required int attack,
      @required int defense,
      @required int special_atack,
      @required int special_defense,
      @required int speed}) {
    this.hp = hp;
    this.attack = attack;
    this.defense = defense;
    this.special_attack = special_atack;
    this.special_defense = special_defense;
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
        return special_attack.toString();
      case StatisticsType.SpecialDefense:
        return special_defense.toString();
      case StatisticsType.Speed:
        return speed.toString();
      default:
        break;
    }
  }
}
