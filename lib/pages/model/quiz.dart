// ignore_for_file: public_member_api_docs, sort_constructors_first
class Quiz {
  String title;
  int answerIndex;
  String option0;
  String option1;
  String option2;
  String option3;
  Quiz({
    required this.title,
    required this.answerIndex,
    required this.option0,
    required this.option1,
    required this.option2,
    required this.option3,
  });
}

List<Quiz> listQuiz = [
  Quiz(
      title: '1+1',
      answerIndex: 1,
      option0: '1',
      option1: '2',
      option2: '3',
      option3: '4'),
  Quiz(
      title: '2+2',
      answerIndex: 1,
      option0: '2',
      option1: '4',
      option2: '6',
      option3: '8'),
  Quiz(
      title: '3+3',
      answerIndex: 0,
      option0: '6',
      option1: '9',
      option2: '12',
      option3: '15')
];
