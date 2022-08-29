import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
   Result(this.clickRestartButton, this.resultScore);

  final Function() clickRestartButton;
  final int resultScore;

  String get result {
    String Text = '';
    if (resultScore >= 40) {
      Text = 'awesome!';
    } else if (resultScore >= 30) {
      Text = 'Perfect!';
    }else if (resultScore >= 25) {
      Text = ' Good!';
    } else {
      Text = ' bad!';
    }

    return Text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Done!',
            style: TextStyle(color: isSwitched == false ? Colors.black : Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),
          ),
          Text(
            'Total Score = $resultScore',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            result,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            onPressed: clickRestartButton,
            child: const Text(
              'Restart The App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
