import 'package:flutter/material.dart';

class ToggleModeWidget extends StatefulWidget {
  const ToggleModeWidget({super.key});

  @override
  State<ToggleModeWidget> createState() => _ToggleModeWidgetState();
}

class _ToggleModeWidgetState extends State<ToggleModeWidget> {

  bool isOn=false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("VEG",textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
            strutStyle: StrutStyle(forceStrutHeight: true, height: 1.0),
          ),

          Text("MODE",textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:9,
          ),
          ),
          Transform.scale(
            scale: 0.7,
            child: Switch(
              padding: const EdgeInsets.symmetric(vertical: -6),
              value: isOn,
              onChanged: (value) {
                setState(() {
                  isOn = value;
                });
              },
              activeColor: Colors.white,      // Thumb color when ON
              activeTrackColor: Colors.green, // Track color when ON
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade700,
            ),
          )
        ],
    );
  }
}
