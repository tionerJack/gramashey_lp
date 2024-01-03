class Benefit {
  final String id;

  final String img;

  final String title;

  final String abstract;

  final String path;

  final String description;

  Benefit(
      {required this.id,
      required this.description,
      required this.abstract,
      required this.img,
      required this.path,
      required this.title});

  Benefit.fromMap(Map<String, dynamic> map)
      : img = map['img'] ?? "",
        id = map['id'] ?? "",
        title = map['title'] ?? "",
        abstract = map["abstract"] ?? "",
        description = map["description"] ?? "",
        path = map['path'] ?? "/";
}
