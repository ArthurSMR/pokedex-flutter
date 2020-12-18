import 'package:flutter/material.dart';

enum StatisticsType {
  Hp,
  Attack,
  Defense,
  SpecialAttack,
  SpecialDefense,
  Speed,
}

extension StatisticsTypeExtension on StatisticsType {
  String get name {
    switch (this) {
      case StatisticsType.Attack:
        return 'Ataque';
      case StatisticsType.Defense:
        return 'Defesa';
      case StatisticsType.Hp:
        return 'Vida';
      case StatisticsType.SpecialAttack:
        return 'Ataque Especial';
      case StatisticsType.SpecialDefense:
        return 'Defesa Especial';
      case StatisticsType.Speed:
        return 'Velocidade';
      default:
        return null;
    }
  }

  AssetImage get image {
    switch (this) {
      case StatisticsType.Attack:
        return AssetImage('Assets/Icons/sword.png');
      case StatisticsType.Defense:
        return AssetImage('Assets/Icons/shield.png');
      case StatisticsType.Hp:
        return AssetImage('Assets/Icons/heart.png');
      case StatisticsType.SpecialAttack:
        return AssetImage('Assets/Icons/star.png');
      case StatisticsType.SpecialDefense:
        return AssetImage('Assets/Icons/special_shield.png');
      case StatisticsType.Speed:
        return AssetImage('Assets/Icons/speed.png');
      default:
        return null;
    }
  }

  Color color(int valueForStatisticType) {
    if (valueForStatisticType >= 70) {
      return Color(0xFF58BC2A);
    } else if (valueForStatisticType < 70 && valueForStatisticType > 30) {
      return Color(0xFFFFCA00);
    } else if (valueForStatisticType <= 30) {
      return Color(0xFFEB5757);
    }
    return Color(0xFF58BC2A);
  }
}
