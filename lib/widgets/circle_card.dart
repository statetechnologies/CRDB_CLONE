import 'package:crdb_simbanking/utils/colors.dart';
import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleCard extends StatelessWidget {
  final Color color;
  final bool showOverlays;
  final List<Widget> childs;
  final double height;
  Function()? onTap;
   CircleCard({
    Key? key,
    this.color = AppColors.greenColor,
    this.showOverlays = true,
    required this.childs,
    required this.onTap,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 8,
                  blurRadius: 8,
                  offset: Offset(0, 5),
                ),
              ],
              border: Border.all(color: color, width: 5.w),
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: childs),
            ),
          ),
        ),
        showOverlays
            ? Positioned(
                bottom: -3,
                right: -12,
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child:
                       Card(
                         elevation: 4,
                         color: Color(0xFFE6E7E7),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                         child: GestureDetector(onTap: onTap,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Icon(Icons.visibility,size: 18,),
                                 Text('Balance',style: TextStyle(letterSpacing: -0.5),),
                               ],
                             )),
                       ),
                ))
            : Container()
      ],
    );
  }
}
