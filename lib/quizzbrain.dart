import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Commercial boards (like Arduino) are forbidden in Fab Academy', false),
    Question(
        'In molding and casting I decided to 3D print my tooling. This is valid',
        true),
    Question('Question 3', false),
    Question('Question 4', true),
    Question('Question 5', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
//      Alert(
//              context: context,
//              title: "FINISH",
//              desc:
//                  "Congratulations you finished the Quizz. Press the button to start over.")
//          .show();
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
