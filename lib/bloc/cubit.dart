import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zapitdemo/bloc/state.dart';
import 'package:zapitdemo/repository/crypto_repo.dart';

class CryptoCubit extends Cubit<CryptoState> {
  final CryptoRepo _repo;
  CryptoCubit(this._repo) : super(InitialState());

  Future<void> fetchData() async {
    emit(LoadingState());

    try {
      final response = await _repo.getCryptoData();
      emit(ResponseState(response));
    } on Exception catch (e) {
      log(e.toString());
      emit(ErrorState());
    }
  }
}
