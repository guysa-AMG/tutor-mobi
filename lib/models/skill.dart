class Skill {
  String id;
  String url;
  String title;
  String shortTitle;
  String description;
  String group;

  Skill({
    required this.id,
    required this.url,
    required this.description,
    required this.title,
    required this.shortTitle,
    required this.group,
  });

  factory Skill.fromJson(dynamic data) {
    return Skill(
      id: data["id"],
      url: data["url"],
      title:data["title"],
      shortTitle: data["shortTitle"],
      group: data["group"],
      description: data["description"]
    );
  }
}
