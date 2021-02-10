import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:outlook/responsive.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            icon: Icon(
              Feather.trash,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Feather.share,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Feather.send,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Feather.hard_drive,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
          Spacer(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: Icon(
                Feather.printer,
                size: 16.0,
                color: kGrayColor,
              ),
              onPressed: () {},
            ),
          IconButton(
            icon: Icon(
              Feather.bookmark,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Feather.more_vertical,
              size: 16.0,
              color: kGrayColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
