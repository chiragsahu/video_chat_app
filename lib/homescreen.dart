import 'package:flutter/material.dart';
import 'package:video_chat_app/doctorlistcard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 15.0, 0, 0),
            child: Row(
              children: const [
                Text(
                  "Hello User !",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.notification_add),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return DoctorListCard();
        },
      ),
    );
  }
}
