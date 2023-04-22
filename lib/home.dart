// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zapitdemo/bloc/cubit.dart';
import 'package:zapitdemo/bloc/state.dart';
import 'package:zapitdemo/models/crypto_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<CryptoCubit>();
      cubit.fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Data"),
      ),
      body: BlocBuilder<CryptoCubit, CryptoState>(
        builder: (context, state) {
          if (state is InitialState || state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ResponseState) {
            final data = state.data;
            return ListView.builder(
              itemCount: data.isEmpty ? 0 : data.length,
              itemBuilder: (BuildContext context, int index) {
                CryptoData cryptoData = data[index];

                return Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            cryptoData.image?.small.toString() ?? "",
                          ),
                        ),
                        title: Text(cryptoData.name ?? ""),
                        subtitle: Text(cryptoData.symbol ?? ""),
                        trailing: Text(
                          "\$${cryptoData.marketData?.currentPrice.entries.first.value}",
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return const Center(
            child: Text('Data Fetching Failed'),
          );
        },
      ),
    );
  }
}
