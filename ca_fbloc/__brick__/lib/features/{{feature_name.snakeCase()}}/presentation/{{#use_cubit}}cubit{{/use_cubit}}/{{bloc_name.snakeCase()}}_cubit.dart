import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{bloc_name.snakeCase()}}_state.dart';
part '../../cubit/{{bloc_name.snakeCase()}}_cubit.freezed.dart';

@injectable
final class {{bloc_name.pascalCase()}}Cubit extends Cubit<{{bloc_name.pascalCase()}}Event, {{bloc_name.pascalCase()}}State> {
  {{bloc_name.pascalCase()}}Cubit() : super(const {{bloc_name.pascalCase()}}State());

   // TODO: Implement cubit methods
}
