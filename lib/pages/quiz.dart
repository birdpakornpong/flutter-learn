import 'package:flutter/material.dart';

import 'model/quiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int index = 0;

  int score = 0;

  checkAnswer({required int optionIndex}) {
    if (optionIndex == listQuiz[index].answerIndex) {
      score = 1 + score;
    }
    setState(() {
      index = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: listQuiz.length == index
            ? Column(children: [
                const Spacer(),
                Center(child: Text('$score')),
                const Spacer(),
              ])
            : Column(
                children: [
                  const Spacer(),
                  Center(child: Text(listQuiz[index].title)),
                  const Spacer(),
                  // Wrap(
                  //   children: [
                  //     Container(
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         child: ElevatedButton(
                  //             onPressed: () {}, child: Text('Button'))),
                  //     Container(
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         child: ElevatedButton(
                  //             onPressed: () {}, child: Text('Button'))),
                  //     Container(
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         child: ElevatedButton(
                  //             onPressed: () {}, child: Text('Button'))),
                  //     Container(
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         child:
                  //             ElevatedButton(onPressed: () {}, child: Text('Button')))
                  //   ],
                  // )
                  GridView(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 5 / 2),
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder()),
                              onPressed: () {
                                checkAnswer(optionIndex: 0);
                              },
                              child: Text(listQuiz[index].option0))),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder()),
                              onPressed: () {
                                checkAnswer(optionIndex: 1);
                              },
                              child: Text(listQuiz[index].option1))),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder()),
                              onPressed: () {
                                checkAnswer(optionIndex: 2);
                              },
                              child: Text(listQuiz[index].option2))),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder()),
                              onPressed: () {
                                checkAnswer(optionIndex: 3);
                              },
                              child: Text(listQuiz[index].option3)))
                    ],
                  )
                ],
              ));
  }
}
