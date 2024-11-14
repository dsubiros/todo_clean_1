import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:network_info/src/domain/network_info.dart';

///Network info implementation
class NetworkInfo implements INetworkInfo {
  ///Constructor for NetworkInfo Implementation
  NetworkInfo(this._connectionChecker);

  final Connectivity _connectionChecker;

  @override
  Future<bool> get isConnected async =>
      (await _connectionChecker.checkConnectivity()) != ConnectivityResult.none;
}
