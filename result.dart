import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 12) {
      resultText = ' You are good ';
    } else if (resultScore <= 16) {
      resultText = 'You are great';
    } else {
      resultText = 'Dark!';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
