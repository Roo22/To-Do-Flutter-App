import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notes_list.dart';
import 'notes_card.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TO-DO LIST'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.pushNamed(context, 'addnotes').then((value)
          {
            setState(() {
            });
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
           itemCount: NotesList.notes.length,
            itemBuilder: (context,index)=> NotesCard(name: NotesList.notes[index].name, date: NotesList.notes[index].date),
      ),
    ),
    );
  }
}
