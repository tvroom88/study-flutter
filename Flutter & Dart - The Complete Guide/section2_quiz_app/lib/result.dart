import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: <Widget>[
              Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child:Text('Restart Quiz!',
                ),
                onPressed: resetHandler,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

    // return Container(
    //   width: double.infinity,
    //   child: ElevatedButton(
    //     style: ButtonStyle(
    //       backgroundColor: MaterialStateProperty.all(Colors.blue),
    //       foregroundColor: MaterialStateProperty.all(Colors.white),
    //     ),
    //     child: Text(answerText),
    //     onPressed: selectHandler,
    //   ),
    // );