import 'package:crdb_simbanking/widgets/settingsWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class MipangilioScreen extends StatefulWidget {
  const MipangilioScreen({super.key});

  @override
  State<MipangilioScreen> createState() => _MipangilioScreenState();
}

class _MipangilioScreenState extends State<MipangilioScreen> {

  bool switchEnglish=false;
  bool switchMode=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
      child: ListView(
        children: [
          SizedBox(height: 5.h),
          SizedBox(
            height: 80.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                      shape: BoxShape.circle),
                  child: Icon(Icons.person, size: 60.sp, color: Colors.grey),
                ),
                Positioned(
                    bottom: 2,
                    right: 126,
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              depth: 4,
                              intensity: 0.75,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Icon(CupertinoIcons.person_add, size: 18.sp)),
                    ))
              ],
            ),
          ),
          SettingsWidgets(title: "PROFILE", tile: [
            SettingsTile(
                icon: CupertinoIcons.link,
                tileTitle: "Link account"),
            SettingsTile(icon: Icons.fingerprint_rounded, tileTitle: "Bio update")
          ]),
          SettingsWidgets(title: "SECURITY", tile: [
            SettingsTile(icon: Icons.key, tileTitle: "Change pin"),
          ]),
          SettingsWidgets(title: "APPLICATION", tile: [
            SettingsTile(
                isIcon: false,
                icon: Icons.public,
                tileTitle: "Switch to English", state: switchEnglish, onChanged: (bool value) {
                  setState(() {
                    switchEnglish=value;
                  });

            },),
            SettingsTile(
                isIcon: false,
                icon: Icons.dark_mode_outlined,
                tileTitle: "Dark mode", state: switchMode, onChanged: (bool value) {
                  setState(() {
                    switchMode = value;
                  });
            },),
          ]),
          SettingsWidgets(notitle: true, title: "", tile: [
            SettingsTile(
                icon: Icons.close, tileTitle: "Unregister Device"),
          ]),
        ],
      ),
    );
  }
}
