import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:myanmar_currency/data/models/currency_model.dart';

class Api {
  static const apiUrl = "https://forex.cbm.gov.mm/api/latest";
  static getData() async {
    Uri uri = Uri.parse(apiUrl);
    var response = await http.get(uri);
    print(response.body.runtimeType);
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      print(decodeData.runtimeType);

      // var jsonResponse = convert.jsonDecode(response.body);

      Currency data = Currency.fromJson(decodeData);
      print(data);
      print(data.rate);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
/*
static const _url = '${Env.url}/cashier';

  static Future<ResponseModel> getAll({int page = 1}) async {
    var resp = await BaseNetwork.getRequest(url: '$_url?page=$page');

    if (resp.status) {
      var list = resp.data as List;
      resp.data = list.map((e) => CashierModel.fromJson(e)).toList();
    }

    return resp;
  }
*/
