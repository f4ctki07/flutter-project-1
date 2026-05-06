import 'package:flutter/material.dart';

Widget AccountPage(BuildContext context) {
  return  Column(
      spacing: 20,
      // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
          Column(
            spacing: 5,
            children: [
              Row(
                children: [
                  Text("닉네임"),
                  Spacer(),
                  Text(
                    "infoteam",
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text("이메일"),
                  Spacer(),
                  Text(
                    "infoteam@gistory.me",
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ]
    );
}