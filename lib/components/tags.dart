import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

class Tags extends StatelessWidget {
  const Tags({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 16.0,
              color: kGrayColor,
            ),
            SizedBox(width: kDefaultPadding / 4),
            Icon(
              Feather.bookmark,
              size: 20.0,
              color: kGrayColor,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "Tags",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: kGrayColor,
                size: 20,
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        buildTag(context,
            color: Color(0xFF23CF91), title: "Design", icon: Feather.feather),
        buildTag(context,
            color: Color(0xFF3A6FF7), title: "Work", icon: Feather.briefcase),
        buildTag(context,
            color: Color(0xFFF3CF50), title: "Friends", icon: Feather.box),
        buildTag(context,
            color: Color(0xFF8338E1), title: "Family", icon: Feather.octagon),
      ],
    );
  }

  InkWell buildTag(BuildContext context,
      {@required Color color,
      @required String title,
      @required IconData icon}) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16.0,
              color: kGrayColor,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: kGrayColor),
            ),
          ],
        ),
      ),
    );
  }
}
