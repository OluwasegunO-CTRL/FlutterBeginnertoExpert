import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;






  @override
  Widget build(context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color:  data['correct_answer'] == data['user_answer'] ? Colors.blue : const Color.fromARGB(255, 251, 64, 226),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(((data['question_index'] as int ) + 1).toString(),
                     ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(data['question'] as String,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        ),
                        // SizedBox(height: 5),
                        Text(data['user_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 207, 202, 202)
                        ),),
                        Text(data['correct_answer'] as String, 
                        style: TextStyle(
                          color: Colors.blue
                        ),),
                        SizedBox(height: 5),
                            
                    
                    
                      ]
                    ),
                  ),
              ],);
          }).toList(),
        ),
      ),
    );
  }
}