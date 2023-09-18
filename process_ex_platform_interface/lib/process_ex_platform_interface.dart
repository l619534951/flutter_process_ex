import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:process_ex_platform_interface/method_channel_process_ex.dart';

abstract class ProcessExPlatform extends PlatformInterface {
  /// Constructs a ProcessExPlatformInterfacePlatform.
  ProcessExPlatform() : super(token: _token);

  static final Object _token = Object();

  static ProcessExPlatform _instance = MethodChannelProcessEx();

  /// The default instance of [ProcessExPlatform] to use.
  ///
  /// Defaults to [MethodChannelProcessExPlatformInterface].
  static ProcessExPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ProcessExPlatform] when
  /// they register themselves.
  static set instance(ProcessExPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Map<int, String>> listAllProcess() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
