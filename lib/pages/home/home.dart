import 'package:flutter/material.dart';
import 'package:myanmar_currency/data/api/api.dart';
import 'package:myanmar_currency/data/models/currency_model.dart';

class Home extends StatefulWidget {
  static const String route = '/';

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static Currency? data;

  List<String> names = ["Mg Mg", "Su Su", "Ko Ko"];

  get index => null;
  @override
  void initState() {
    super.initState();
    Api.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data!.rate!.aud!.length,
          itemBuilder: (context, index) =>
              _getMyList(data!.rate!.aud?[index] ?? "")),
    );
  }

  Widget _getMyList(name) {
    return Card(
      child: ListTile(leading: Icon(Icons.person), title: Text(name)),
    );
  }
}
/*
child: ListView.builder(
                  itemCount: pd.list.length,
                  itemBuilder: (ctx, idx) {
                    CashierModel cashier = pd.list[idx];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        onTap: () async {
                          Navigator.pushNamed(
                            context,
                            UpdateCashier.route,
                            arguments: cashier,
                          );
                        },
                        title: Text(cashier.name ?? ''),
                      ),
                    );
                  },
                ),
*/
