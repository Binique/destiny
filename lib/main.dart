import 'package:flutter/material.dart';
import 'storyBrain.dart';
StoryBrain storyBrain = StoryBrain();
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey.shade900,
        body: SafeArea(
          child:
          Story() ,


        ),
      ),
    ),
  );
}
class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}
class _StoryState extends State<Story> {


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(storyBrain.getQuestionText(),
                style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                onPressed: () {
                setState(() {
                  storyBrain.checkButton2();
                });
                },
                child:Text(storyBrain.getButtonText(),
                    style: TextStyle(color: Colors.white,)
                ),
              ),
            ),
          ),
          Visibility(
          visible: storyBrain.getButton1Text() != "",
          child:
          Expanded(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                  onPressed: () {
                  setState(() {
                  storyBrain.checkButton();
                  });

                  },
                  child:Text(storyBrain.getButton1Text(),
                      style: TextStyle(color: Colors.white,)
                  ),
                ),
              ),
            ),
    ),
        ]
    );
  }
}


