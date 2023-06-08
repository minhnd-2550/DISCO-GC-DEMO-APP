import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/res_ja.dart';
import 'package:flutter_gen/gen_l10n/res.dart';

extension BuildContextExt on BuildContext {
  Resource res() => ResourceJa();
}
