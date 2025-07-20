import 'package:flutter_blue/flutter_blue.dart';

class BluetoothService {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  // Start scanning
  void startScan() {
    flutterBlue.startScan(timeout: const Duration(seconds: 4));
  }

  // Stop scanning
  void stopScan() {
    flutterBlue.stopScan();
  }

  // Listen to available devices
  Stream<List<ScanResult>> get scanResults => flutterBlue.scanResults;

  // Connect to selected device
  Future<void> connectToDevice(BluetoothDevice device) async {
    await device.connect();
  }

  // Disconnect
  Future<void> disconnectDevice(BluetoothDevice device) async {
    await device.disconnect();
  }
}
