/// Interface for Network info class
abstract class INetworkInfo {
  /// Function that return `true` if there is connection to internet
  /// otherwise returns `false`
  Future<bool> get isConnected;
}
