import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../Model/model.dart';


class JokeProviderServices extends ChangeNotifier {
  RandomJokes? _joke;

  RandomJokes? get joke => _joke;

  Future<void> getData() async {
    var url = 'https://api.chucknorris.io/jokes/random';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        _joke = RandomJokes.fromJson(data);

        notifyListeners();
      } else {
        print("Something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
