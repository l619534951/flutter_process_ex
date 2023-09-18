import 'package:flutter/services.dart';

import 'process_ex_platform_interface.dart';

const methodChannel =
    MethodChannel('plugins.llddp.com/process_ex_platform_interface');

/// An implementation of [ProcessExPlatform] that uses method channels.
class MethodChannelProcessEx extends ProcessExPlatform {
  @override
  Future<Map<int, String>> listAllProcess() async {
    return await methodChannel
            .invokeMethod<Map<int, String>>('listAllProcess') ??
        <int, String>{};
  }
}
