import 'package:flutter/cupertino.dart';

extension SizeManager on num {
  double appWidth(BuildContext context) => MediaQuery.of(context).size.width*(this/100);
  double appHeight(BuildContext context) => MediaQuery.of(context).size.height*(this/100);
}
