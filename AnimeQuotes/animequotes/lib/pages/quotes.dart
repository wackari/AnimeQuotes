import 'dart:convert';
import 'package:animequotes/model/animequotemodel.dart';
import 'package:animequotes/widgets/quotewidgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:random_color/random_color.dart';

class quotes extends StatefulWidget {
  @override
  _Quotes createState() => _Quotes();
}

class _Quotes extends State<quotes> {
  var apiURL = "https://animechan.vercel.app/api/quotes";
  RandomColor _randomColor = RandomColor();
  Future<List<dynamic>> getPost() async {
    final response =
        await http.get(Uri.https('animechan.vercel.app', '/api/quotes'));
    return postFromJson(response.body);
  }

  List<dynamic> postFromJson(String str) {
    final jsonData = json.decode(str);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return ErrorWidget(snapshot.error);
            }
            return PageView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var model = snapshot.data[index];
                  return quotewidgets(
                    quote: model["quote"],
                    author: model["character"],
                    bgcolor: _randomColor.randomColor(
                        colorHue: ColorHue.multiple(
                            colorHues: [ColorHue.red, ColorHue.blue])),
                  );
                });
          } else
            return CircularProgressIndicator();
        },
      ),
    );
  }
}
