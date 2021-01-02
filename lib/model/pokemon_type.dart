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
