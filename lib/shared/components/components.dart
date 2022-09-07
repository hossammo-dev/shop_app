import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

///Navigate to another page and empty the stack [pages]
void navigateAndRemove(BuildContext context,
        {@required Widget page,
        PageTransitionType transitionType = PageTransitionType.bottomToTop}) =>
    Navigator.of(context).pushAndRemoveUntil(
        PageTransition(child: page, type: transitionType), (route) => false);

///Navigate to another page but keep the previous stack [pages]
void navigateTo(BuildContext context,
        {@required Widget page,
        PageTransitionType transitionType = PageTransitionType.leftToRight}) =>
    Navigator.of(context).push(
      PageTransition(
        child: page,
        type: transitionType,
      ),
    );
