import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notes.dart';
import 'notes_list.dart';
class AddNotesScreen extends StatelessWidget {
   AddNotesScreen({Key? key}) : super(key: key);
 TextEditingController nameController = TextEditingController();
 TextEditingController dateController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Title',
                  labelText: 'Title',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: dateController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'Enter Time',
                  border: OutlineInputBorder(),
                  labelText: 'Time',
                ),
              ),
            ),
            MaterialButton(
                child: Container(
                  width: 300.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child: Text('ADD')),
                ),

                onPressed: ()
                {
                  NotesList.notes.add(Notes(
                      nameController.value.text, dateController.value.text
                  ));
                  Navigator.pop(context);
                },
                ),
          ],
        ),

      ),
    );
  }
}
