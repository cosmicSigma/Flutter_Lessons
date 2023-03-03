/*
* check location
* check don't use from vpn
* check connection(true/false)
* */

class CheckSSIDException implements Exception {
  final String message;
  CheckSSIDException(this.message);
}

class CheckIsConnectedException implements Exception {
  final String message;
  CheckIsConnectedException(this.message);
}

class CheckSignalStrengthException implements Exception {
  final String message;
  CheckSignalStrengthException(this.message);
}

void validateSSID(String ssid){
  final goodLength = RegExp(r'.{5,}');
  if(!ssid.contains(goodLength)){
    throw CheckSSIDException('SSID must be at least 5 characters!');
  }
}

void validateIsConnected(bool isConnected) {
  final connected = true;
  if (isConnected!=connected) throw CheckIsConnectedException("Something went wrong! Please check your connection");
}

void validateSignalStrength(String signalStrength) {
  num ping = 104;
  if (!(num.parse(signalStrength)>=ping)) throw CheckSignalStrengthException("Your ping is very high");
}