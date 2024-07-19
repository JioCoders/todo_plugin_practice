import 'package:flutter_test/flutter_test.dart';
import 'package:todo_pflutter/todo_pflutter.dart';
import 'package:todo_pflutter/todo_pflutter_platform_interface.dart';
import 'package:todo_pflutter/todo_pflutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTodoPflutterPlatform
    with MockPlatformInterfaceMixin
    implements TodoPflutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TodoPflutterPlatform initialPlatform = TodoPflutterPlatform.instance;

  test('$MethodChannelTodoPflutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTodoPflutter>());
  });

  test('getPlatformVersion', () async {
    TodoPflutter todoPflutterPlugin = TodoPflutter();
    MockTodoPflutterPlatform fakePlatform = MockTodoPflutterPlatform();
    TodoPflutterPlatform.instance = fakePlatform;

    expect(await todoPflutterPlugin.getPlatformVersion(), '42');
  });
}
