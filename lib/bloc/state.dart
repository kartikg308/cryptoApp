import 'package:zapitdemo/models/crypto_data.dart';

abstract class CryptoState {}

class InitialState extends CryptoState {}

class LoadingState extends CryptoState {}

class ErrorState extends CryptoState {}

class ResponseState extends CryptoState {
  final List<CryptoData> data;
  ResponseState(this.data);
}
