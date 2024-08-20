import 'package:flutter/material.dart';
import 'package:wx_alert/wx_alert.dart';
import 'wrapper.dart';

class SampleAppearance extends StatelessWidget {
  const SampleAppearance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Appearance',
      source: 'sample_appearance.dart',
      child: Column(
        children: [
          WxAlert(
            variant: WxAlertVariant.tonal,
            leading: Icon(Icons.warning),
            child: Text('This is a Tonal Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.elevated,
            leading: Icon(Icons.warning),
            child: Text('This is a Elevated Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.filled,
            leading: Icon(Icons.warning),
            child: Text('This is a Filled Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.outlined,
            leading: Icon(Icons.warning),
            child: Text('This is a Outlined Alert - Check it out!'),
          ),
        ],
      ),
    );
  }
}
