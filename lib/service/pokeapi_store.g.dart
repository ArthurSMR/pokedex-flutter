// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  Computed<PokeAPI> _$pokeAPIComputed;

  @override
  PokeAPI get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokeAPI>(() => super.pokeAPI,
              name: '_PokeApiStoreBase.pokeAPI'))
          .value;
  Computed<List<Pokemon>> _$pokeListComputed;

  @override
  List<Pokemon> get pokeList =>
      (_$pokeListComputed ??= Computed<List<Pokemon>>(() => super.pokeList,
              name: '_PokeApiStoreBase.pokeList'))
          .value;

  final _$_pokeAPIAtom = Atom(name: '_PokeApiStoreBase._pokeAPI');

  @override
  PokeAPI get _pokeAPI {
    _$_pokeAPIAtom.reportRead();
    return super._pokeAPI;
  }

  @override
  set _pokeAPI(PokeAPI value) {
    _$_pokeAPIAtom.reportWrite(value, super._pokeAPI, () {
      super._pokeAPI = value;
    });
  }

  final _$_pokeListAtom = Atom(name: '_PokeApiStoreBase._pokeList');

  @override
  List<Pokemon> get _pokeList {
    _$_pokeListAtom.reportRead();
    return super._pokeList;
  }

  @override
  set _pokeList(List<Pokemon> value) {
    _$_pokeListAtom.reportWrite(value, super._pokeList, () {
      super._pokeList = value;
    });
  }

  final _$_PokeApiStoreBaseActionController =
      ActionController(name: '_PokeApiStoreBase');

  @override
  Future<bool> fetchPokemonList() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.fetchPokemonList');
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<bool> getTeam(List<String> team) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction(
        name: '_PokeApiStoreBase.getTeam');
    try {
      return super.getTeam(team);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokeAPI: ${pokeAPI},
pokeList: ${pokeList}
    ''';
  }
}
