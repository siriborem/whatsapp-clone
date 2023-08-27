import 'package:flutter/material.dart';

import '../CustomUI/HeadOwnStatus.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
          height: 48,
          child: FloatingActionButton(
            backgroundColor: Colors.blueGrey[100],
            elevation: 8,
            onPressed: () {},
            child: Icon( Icons.edit,
              color: Colors.blueGrey[900],
            ),
          ),
          ),
         SizedBox(
          height: 13,
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.greenAccent[700],
          elevation: 5,
          child: Icon(Icons.camera_alt),
        ),
      ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadOwnStatus(),
            Container(
              height: 33,
                width: MediaQuery.of(context).size.width,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                child: Text(
                  "Recent Updates",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
