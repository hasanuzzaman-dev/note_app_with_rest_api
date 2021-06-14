import 'package:flutter/material.dart';
import 'package:note_app_with_rest_api/models/note_for_listing.dart';

class NoteList extends StatelessWidget {
  //const NoteList({Key? key}) : super(key: key);

  final notes = [
    new NoteForListing(
        noteID: 1,
        createDate: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 1'),
    new NoteForListing(
        noteID: 2,
        createDate: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 2'),
    new NoteForListing(
        noteID: 3,
        createDate: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 3'),
    new NoteForListing(
        noteID: 1,
        createDate: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 3'),
    new NoteForListing(
        noteID: 4,
        createDate: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 4'),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} at ${dateTime.hour}:${dateTime.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              notes[index].noteTitle,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            subtitle: Text(
                'Last edited on ${formatDateTime(notes[index].lastEditDateTime)}'),
          );
        },
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemCount: notes.length,
      ),
    );
  }
}
