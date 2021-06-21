import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  //const NoteModify({Key? key}) : super(key: key);
  final int? noteID;
  bool get isEditing => noteID != null;
  NoteModify({this.noteID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          noteID == null ? 'Create Note' : 'Edit Note',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                hintText: 'Note title',
                labelText: 'Title',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: 'Note content',
                labelText: 'Content',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    if (isEditing) {
                      // update note in api
                    } else {
                      // create in API
                    }

                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF004D40),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  child: Text('SUBMIT'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
