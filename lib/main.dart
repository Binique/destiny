import 'package:flutter/material.dart';
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
              child: Text('Questions',
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

                },
                child:Text('Réponse 1',
                    style: TextStyle(color: Colors.white,)
                ),
              ),
            ),
          ),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                  onPressed: () {


                  },
                  child:Text('Réponse 2',
                      style: TextStyle(color: Colors.white,)
                  ),
                ),
              ),
            ),
        ]
    );
  }
}


