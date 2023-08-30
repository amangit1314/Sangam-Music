class Category {
  final String name;
  final String image;
  final String description;

  Category({
    required this.name,
    required this.image,
    required this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      image: json['image'],
      description: json['description'],
    );
  }
}
