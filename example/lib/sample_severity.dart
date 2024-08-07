import 'package:flutter/material.dart';
import 'package:wx_alert/wx_alert.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleSeverity extends StatelessWidget {
  const SampleSeverity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Color Severity',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          WxAlert(
            variant: WxAlertVariant.tonal,
            severity: dangerColor,
            leading: Icon(Icons.error),
            child: Text('This is a Error Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.elevated,
            severity: warningColor,
            leading: Icon(Icons.warning),
            child: Text('This is a Warning Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.filled,
            severity: successColor,
            leading: Icon(Icons.check_circle),
            child: Text('This is a Success Alert - Check it out!'),
          ),
          SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.outlined,
            severity: infoColor,
            leading: Icon(Icons.info),
            child: Text('This is a Info Alert - Check it out!'),
          ),
        ],
      ),
    );
  }
}
