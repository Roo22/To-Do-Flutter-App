import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesCard extends StatefulWidget {
  //const NotesCard({Key? key}) : super(key: key);
   final String name , date;

   NotesCard({required this.name,required this.date});

  @override
  _NotesCardState createState() => _NotesCardState();
}

class _NotesCardState extends State<NotesCard> {
  bool? _checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 130.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            title: Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            secondary: Text(widget.date ,style:TextStyle(color: Colors.white70)),
            controlAffinity:
            ListTileControlAffinity.trailing,
            value: _checked,
            onChanged: (bool? value)
            {
              setState(() {
                _checked = value;
              });
            },
          )

        ],
      ),
    );
  }
}
