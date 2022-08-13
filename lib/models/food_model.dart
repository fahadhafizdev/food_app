class FoodModel {
  int id;
  String name;
  String image;
  String include;
  String desc;
  double rating;
  int cal;
  int time;
  int statusLove;

  FoodModel({
    required this.id,
    required this.cal,
    required this.desc,
    required this.image,
    required this.include,
    required this.name,
    required this.rating,
    required this.statusLove,
    required this.time,
  });
}
