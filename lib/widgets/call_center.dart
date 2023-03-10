import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallCenter extends StatelessWidget {
  const CallCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: NeumorphicWidget(
        radius: 35,
          color: Colors.grey.shade100,
          content: Icon(
            Icons.message_outlined,
          )),
    );
  }
}
