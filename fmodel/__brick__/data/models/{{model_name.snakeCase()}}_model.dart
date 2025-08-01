import 'package:freezed_annotation/freezed_annotation.dart';

part '../../lib/features/{{feature_name.snakeCase()}}/data/models/{{model_name.snakeCase()}}_model.freezed.dart';
part '../../lib/features/{{feature_name.snakeCase()}}/data/models/{{model_name.snakeCase()}}_model.g.dart';

@freezed
class {{model_name.pascalCase()}}Model with _${{model_name.pascalCase()}}Model {
  const factory {{model_name.pascalCase()}}Model({
    // TODO: Add properties here
  }) = _{{model_name.pascalCase()}}Model;

  // Json method is only needed in data layer 
  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{model_name.pascalCase()}}ModelFromJson(json);
}