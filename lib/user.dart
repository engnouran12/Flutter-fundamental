import 'package:flutter/material.dart';
//how to deal with diff data type in f=database with listviem item

class Modeluser {
  final int id;
  final String name;
  final String phone;
  Modeluser({required this.name, required this.id, required this.phone});
}

class User_screen extends StatelessWidget {
  List<Modeluser> users = [
    Modeluser(name: 'NOUR', id: 1, phone: '0112345778'),
    Modeluser(name: 'mona', id: 2, phone: '01123455577'),
    Modeluser(name: 'ahmed', id: 3, phone: '01123455555'),
    Modeluser(name: 'noran', id: 4, phone: '0112345666'),
    Modeluser(name: 'mody', id: 5, phone: '011234556666')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('users'),
        ),
        body: ListView.separated(
          itemBuilder: ((context, index) => builduseritem(users[index])),
          separatorBuilder: ((context, index) => Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              )),
          itemCount: users.length,
        ));
  }
}

Widget builduseritem(Modeluser usr) => Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.lightBlue,
            child: Text(
              '${usr.id}',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            //as element donot escape buttun
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${usr.name}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${usr.phone}',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
