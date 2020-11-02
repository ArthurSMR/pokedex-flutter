import 'package:pokebla/view/pokemon_detail/statistics_type.dart';
import 'package:meta/meta.dart';

class Pokemon {
  String name;
  String imageURL;
  PokemonType type;
  Statistics statistics;

  Pokemon(
      String name, PokemonType type, String imageURL, Statistics statistics) {
    this.name = name;
    this.type = type;
    this.imageURL = imageURL;
    this.statistics = statistics;
  }
}

class Statistics {
  int attack;
  int defense;

  Statistics({@required int attack, @required int defense}) {
    this.attack = attack;
    this.defense = defense;
  }

  String getValueFor(StatisticsType type) {
    switch (type) {
      case StatisticsType.Attack:
        return attack.toString();
      case StatisticsType.Defense:
        return defense.toString();
        break;
      default:
        return '0';
    }
  }
}

enum PokemonType { Water, Fire, Earth }

extension PokemonExtension on PokemonType {
  String get name {
    switch (this) {
      case PokemonType.Earth:
        return 'Terra';
      case PokemonType.Water:
        return 'Água';
      case PokemonType.Fire:
        return 'Fogo';
      default:
        return '';
    }
  }
}
