import 'package:flutter/material.dart';
import 'package:wx_alert/wx_alert.dart';
import 'package:wx_alert/wx_anchor.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleClickable extends StatelessWidget {
  const SampleClickable({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Clickable',
      source: 'sample_clickable.dart',
      child: Column(
        children: [
          WxAlert(
            variant: WxAlertVariant.elevated,
            onPressed: () {},
            severity: successColor,
            leading: const Icon(Icons.check_circle_outline),
            child: const Text('This is Clickable Alert - Check it out!'),
          ),
          const SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.tonal,
            severity: infoColor,
            leading: const Icon(Icons.info),
            trailing: WxAnchor.circle(
              onTap: () {},
              overlayRadius: 0,
              hoveredStyle: WxAnchorStyle.circle(overlayRadius: 20),
              pressedStyle: WxAnchorStyle.circle(overlayRadius: 15),
              child: const Icon(Icons.close),
            ),
            title: const Text('Info Alert'),
            subtitle: const Text('This alert with close button'),
          ),
        ],
      ),
    );
  }
}
