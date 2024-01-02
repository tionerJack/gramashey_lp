class Benefit {
  final String id;
  final String img;
  final String title;

  final String path;

  Benefit(this.id,
      {required this.img, required this.path, required this.title});

  Benefit.fromMap(Map<String, dynamic> map)
      : img = map['img'] ?? "",
        id = map['id'] ?? "",
        title = map['title'] ?? "",
        path = map['path'] ?? "/";
}
