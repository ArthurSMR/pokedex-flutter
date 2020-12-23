// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapiv2_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiV2Store on _PokeApiV2StoreBase, Store {
  Computed<PokeApiV2> _$pokeAPIComputed;

  @override
  PokeApiV2 get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokeApiV2>(() => super.pokeAPI,
              name: '_PokeApiV2StoreBase.pokeAPI'))
          .value;

  final _$_pokeApiV2Atom = Atom(name: '_PokeApiV2StoreBase._pokeApiV2');

  @override
  PokeApiV2 get _pokeApiV2 {
    _$_pokeApiV2Atom.reportRead();
    return super._pokeApiV2;
  }

  @override
  set _pokeApiV2(PokeApiV2 value) {
    _$_pokeApiV2Atom.reportWrite(value, super._pokeApiV2, () {
      super._pokeApiV2 = value;
    });
  }

  final _$_PokeApiV2StoreBaseActionController =
      ActionController(name: '_PokeApiV2StoreBase');

  @override
  dynamic fetchPokemonDetails(String pokemonName) {
    final _$actionInfo = _$_PokeApiV2StoreBaseActionController.startAction(
        name: '_PokeApiV2StoreBase.fetchPokemonDetails');
    try {
      return super.fetchPokemonDetails(pokemonName);
    } finally {
      _$_PokeApiV2StoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokeAPI: ${pokeAPI}
    ''';
  }
}
