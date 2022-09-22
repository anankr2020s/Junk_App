import 'package:flutter/material.dart';
import 'package:junk_app/constant.dart';

import '../../details/detail_screen.dart';

class RecomendsTrash extends StatelessWidget {
  const RecomendsTrash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        RecomendTrashCard(
          image: 'assets/images/plastic_re.jpg',
          title: "พลาสติก",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => DetailsScreen())),
            );
          },
        ),
        RecomendTrashCard(
          image: 'assets/images/Recycled-paper-scaled.jpg',
          title: "กระดาษ",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => DetailsScreen())),
            );
          },
        ),
        RecomendTrashCard(
          image: 'assets/images/metal_re.jpg',
          title: "โลหะ",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => DetailsScreen())),
            );
          },
        ),
      ]),
    );
  }
}

class RecomendTrashCard extends StatelessWidget {
  const RecomendTrashCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: DefaultPadding,
          top: DefaultPadding / 2,
          bottom: DefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(DefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: PrimaryColor.withOpacity(0.23),
                  )
                ]),
            child: Row(children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button)
              ]))
            ]),
          ),
        )
      ]),
    );
  }
}
