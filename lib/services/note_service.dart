import 'package:note_app_with_rest_api/models/note_for_listing.dart';

class NoteService {
  List<NoteForListing> getNoteList() {
    return [
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
          noteID: 4,
          createDate: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'Note 4'),
      new NoteForListing(
          noteID: 5,
          createDate: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: 'Note 5'),
    ];
  }
}
