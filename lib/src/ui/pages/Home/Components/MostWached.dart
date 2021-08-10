import 'package:discover/src/domain/models/Post.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class MostWached extends StatelessWidget {
  MostWached({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  List<Post> post = [
    Post(
        title: 'Prepare for your first skateboard jump',
        nameUser: 'Jordan Wise',
        image:
            'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/postlow1.png?alt=media&token=3c6fc978-3fad-4aa9-baba-e4b93a1034e2',
        views: '125,908 views',
        ago: '2 days ago'),
    Post(
        title: 'Basic how to ride your skateboard comfortly',
        nameUser: 'Jordan Wise',
        image:
            'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/postlow2.png?alt=media&token=3d6af28a-1266-4175-89eb-45208981cece',
        views: '123,108 views',
        ago: '2 days ago'),
    Post(
        title: 'Skateboard, the new word',
        nameUser: 'GadeoNFlutter',
        views: '182,001 views',
        image:
            'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/postlow3.png?alt=media&token=85fe0497-a92a-42ad-8d73-7392b9b86609',
        ago: '2 days ago'),
    Post(
        title: 'the point break',
        nameUser: 'GadeoNFlutter',
        views: '210,135 views',
        image:
            'https://firebasestorage.googleapis.com/v0/b/cubit-dvp.appspot.com/o/postlow4.png?alt=media&token=ba120bcf-e56e-42f2-b6d7-536d3ac8f060',
        ago: '2 days ago'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: size.width,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.41, crossAxisCount: 2),
          itemCount: post.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Container(
                    height: 110,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        post[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              post[index].title,
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                           const SizedBox(height: 5,),
                            Text(post[index].nameUser, style: TextStyle(color: Colors.grey, fontSize: 16)),
                          const SizedBox(height: 5,),
                          Text(post[index].views + ' . '+ post[index].ago, style: TextStyle(color: Colors.grey, fontSize: 14))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}