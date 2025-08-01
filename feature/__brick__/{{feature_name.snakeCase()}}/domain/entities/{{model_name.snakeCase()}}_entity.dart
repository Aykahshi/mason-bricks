import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/{{model_name.snakeCase()}}_model.dart';

part '{{model_name.snakeCase()}}_entity.freezed.dart';

@freezed
sealed class {{model_name.pascalCase()}} with _${{model_name.pascalCase()}} {
  const {{model_name.pascalCase()}}._();

  const factory {{model_name.pascalCase()}}({
    // TODO: Add properties here
  }) = _{{model_name.pascalCase()}};

  factory {{model_name.pascalCase()}}.fromModel({{model_name.pascalCase()}}Model model) {
    return {{model_name.pascalCase()}}(
      // TODO: Map properties from model here
    );
  }
}