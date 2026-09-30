class Pokemon {
  final int id;
  final String name;
  final List<String> types;
  final String ability;
  final int height;
  final int weight;

  Pokemon(this.id, this.name, this.types, this.ability, this.height, this.weight);

  String get image =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
}
