import 'package:animequotes/pages/quotes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heigth = 40;
    double width = 40;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Image.asset(
                "assets/quotesb.png",
                height: heigth,
                width: width,
              ),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  style:
                      GoogleFonts.comicNeue(fontSize: 40, color: Colors.black),
                  children: [
                    TextSpan(text: "Its time\n"),
                    TextSpan(
                        text: "To get Inspired",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => quotes()));
                    },
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text("Ready?"),
                  )),
              Spacer(),
            ],
          ),
        ));
  }
}
