import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  context.logger.info('⚙️  Installing dependencies...');

  await Future.wait([
    Process.run('fvm', ['flutter', 'pub', 'add', 'freezed_annotation']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dev:build_runner']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dev:freezed']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'json_annotation']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dev:json_serializable']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dio']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'logger']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'pretty_dio_logger']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'get_it']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'injectable']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dev:injectable_generator']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'auto_route']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'dev:auto_route_generator']),
    Process.run('fvm', ['flutter', 'pub', 'add', 'flutter_bloc'])
  ]);

  context.logger.info('⚙️  Running flutter pub get and format...');
  await Process.run('fvm', ['flutter', 'pub', 'get']);
  await Process.run('fvm', ['flutter', 'format', '.']);
  context.logger.success('🎉 Template generation completed!');
}
