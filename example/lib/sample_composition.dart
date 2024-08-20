import 'package:flutter/material.dart';
import 'package:wx_alert/wx_alert.dart';
import 'package:wx_alert/wx_anchor.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleComposition extends StatelessWidget {
  const SampleComposition({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Composition',
      source: 'sample_composition.dart',
      child: Column(
        children: [
          const WxAlert(
            variant: WxAlertVariant.tonal,
            severity: dangerColor,
            leading: Icon(Icons.warning),
            child: Text('Single line with leading icon'),
          ),
          const SizedBox(height: 10),
          WxAlert(
            variant: WxAlertVariant.outlined,
            severity: warningColor,
            leading: const Icon(Icons.warning),
            trailing: WxAnchor.circle(
              onTap: () {},
              overlayRadius: 0,
              hoveredStyle: WxAnchorStyle.circle(overlayRadius: 20),
              pressedStyle: WxAnchorStyle.circle(overlayRadius: 15),
              child: const Icon(Icons.close),
            ),
            title: const Text('Using Title'),
            subtitle: const Text('With subtitle and close button'),
          ),
        ],
      ),
    );
  }
}
