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
  @override
  void initState() {
    super.initState();
    Api.getData();
  }

  @override
  List<Currency> list = [];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        ListTile(
          leading: InkWell(child: Icon(Icons.person)),
          title: Text("Title"),
          subtitle: Text("I am title"),
          trailing: Icon(Icons.add),
        ),
      ]),
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
