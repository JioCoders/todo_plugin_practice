import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'todo_pflutter_platform_interface.dart';

/// An implementation of [TodoPflutterPlatform] that uses method channels.
class MethodChannelTodoPflutter extends TodoPflutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('todo_pflutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
