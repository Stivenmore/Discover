import 'package:discover/src/domain/models/Postmid.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MiddPost extends StatelessWidget {
  MiddPost({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
    List<Postmid> postmid = [
    Postmid(
        'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/postmid1.png?alt=media&token=e8f09fe9-3dab-43b3-aea6-c16f185c7f5e'),
    Postmid(
        'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/2.png?alt=media&token=56903175-eb67-457d-a785-b82544983406')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: postmid.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 230,
                width: size.width * .8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    postmid[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
    );
  }
}


