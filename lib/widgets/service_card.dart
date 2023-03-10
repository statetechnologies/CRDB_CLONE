import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCard extends StatelessWidget {
  final int itemslength;
  final List? itemslistIcon;
  final List? itemslistName;
  const ServiceCard({
    Key? key,
    required this.itemslength,
    this.itemslistIcon,
    this.itemslistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemslength,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 120,
            crossAxisCount: 4),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: NeumorphicWidget(
                  radius: 14,
                  content: itemslistIcon![index],
                ),
              ),
              const SizedBox(height: 8),
              Text(itemslistName![index],
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,)
            ],
          );
        }));
  }
}
