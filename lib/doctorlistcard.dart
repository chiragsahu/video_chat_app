import 'package:flutter/material.dart';
import 'package:video_chat_app/main.dart';
import 'package:video_chat_app/videocallscreen.dart';

class DoctorListCard extends StatefulWidget {
  DoctorListCard({Key? key}) : super(key: key);

  @override
  State<DoctorListCard> createState() => _DoctorListCardState();
}

class _DoctorListCardState extends State<DoctorListCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(18)),
        height: 100,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(18)),
                  child: Image.asset("assets/doctor1.jpg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text("Dr. Manoj Tiwary"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text("Dermetologist"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text("Rating : 4.4 / 5"),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    navigatorKey.currentState!.push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const VideocallScreen(),
                    ));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text("Connect")],
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
