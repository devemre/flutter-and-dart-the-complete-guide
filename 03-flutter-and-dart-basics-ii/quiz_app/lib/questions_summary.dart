import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['question'] as String,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer'] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 233, 161, 248),
                              ),
                            ),
                            Text(
                              data['correct_answer'] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 160, 196, 242),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
