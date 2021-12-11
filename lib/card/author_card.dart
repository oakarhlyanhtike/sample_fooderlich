import 'package:flutter/material.dart';
import 'package:fooderlich/card/circle_image.dart';
import 'package:fooderlich/theme/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      required this.imageProvider})
      : super(key: key);

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavourited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleImage(
              imageProvider: widget.imageProvider,
              imageRadius: 28,
            ),
            SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: FooderLichTheme.lightTextTheme.headline2,
                ),
                Text(
                  widget.title,
                  style: FooderLichTheme.lightTextTheme.headline3,
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    _isFavourited = !_isFavourited;
                  });
                  //const snackBar = SnackBar(content: Text('Favourite Person'));
                  //  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //   content: Text('FavoritePerson'),
                  //   action: SnackBarAction(
                  //     label: 'Undo',
                  //     onPressed: () {},
                  //     textColor: Colors.blue,
                  //   ),
                  // ));
                },
                icon: Icon(
                  _isFavourited ? Icons.favorite : Icons.favorite_border,
                  size: 30,
                  color: Colors.red[400],
                )),
          ],
        ),
      ),
    );
  }
}
