import 'package:discover/src/domain/models/User.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsersHistory extends StatelessWidget {
  UsersHistory({
    Key? key,
  }) : super(key: key);

  List<User> user = [
    User(
        name: 'Tony',
        image:
            'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
        isview: false),
    User(
        name: 'Andy',
        image:
            'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
        isview: false),
    User(
        name: 'Budi',
        image:
            'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
        isview: true),
    User(
        name: 'Johny',
        image:
            'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387',
        isview: true),
    User(
        name: 'Thomas',
        image:
            'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        isview: true)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: user.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(user[index].image),
                    ),
                  ),
                  Text(user[index].name,
                      style: TextStyle(
                          color: Colors.grey, fontSize: 18)),
                ],
              )),
            );
          }),
    );
  }
}