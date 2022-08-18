class Author {
  final int id;
  final String name;

  Author(
      this.id,
      this.name;
  );

  @override
  String toString() {
    return  'Author{id: $id, name: $name}';
  }
}