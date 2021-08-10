import 'package:flutter/material.dart';

class quotewidgets extends StatelessWidget {
  var quote = "";
  var author = "";
  var onShareclick;
  var onlikeclick;
  var bgcolor;

  quotewidgets(
      {this.bgcolor,
      this.quote,
      this.author,
      this.onShareclick,
      this.onlikeclick});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Image.asset(
            "assets/quotesw.png",
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          SizedBox(height: 30),
          Text(
            quote,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 30),
          Text(
            author,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: onlikeclick,
                    child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ))),
                InkWell(
                  onTap: onShareclick,
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white)),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
