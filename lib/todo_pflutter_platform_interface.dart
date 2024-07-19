import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'todo_pflutter_method_channel.dart';

abstract class TodoPflutterPlatform extends PlatformInterface {
  /// Constructs a TodoPflutterPlatform.
  TodoPflutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static TodoPflutterPlatform _instance = MethodChannelTodoPflutter();

  /// The default instance of [TodoPflutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelTodoPflutter].
  static TodoPflutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TodoPflutterPlatform] when
  /// they register themselves.
  static set instance(TodoPflutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
