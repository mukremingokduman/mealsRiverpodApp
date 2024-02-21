abstract class Model {
  const Model();
  const Model.fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap();
  Model copyWith();
}