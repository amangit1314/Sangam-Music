class Subscription {
  final String name;
  final String description;
  final String price;
  final String duration;
  final String type;
  final String id;

  Subscription({
    required this.name,
    required this.description,
    required this.price,
    required this.duration,
    required this.type,
    required this.id,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      duration: json['duration'],
      type: json['type'],
      id: json['id'],
    );
  }
}
