import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{bloc_name.snakeCase()}}_event.dart';
part '{{bloc_name.snakeCase()}}_state.dart';
part '../../../blocs/{{bloc_name.snakeCase()}}_bloc.freezed.dart';

@injectable
final class {{bloc_name.pascalCase()}}Bloc extends Bloc<{{bloc_name.pascalCase()}}Event, {{bloc_name.pascalCase()}}State> {
  {{bloc_name.pascalCase()}}Bloc() : super(const {{bloc_name.pascalCase()}}State()) {
    // TODO: Implement Bloc Event Handler
  }
}
