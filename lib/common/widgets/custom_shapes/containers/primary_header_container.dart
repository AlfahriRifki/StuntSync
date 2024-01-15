import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class SSPrimaryHeaderContainer extends StatelessWidget {
  const SSPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SSCurvedEdgeWidget(
      child: Container(
        color: SSColors.primary,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: SSCircularContainer(
                    background: SSColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: SSCircularContainer(
                    background: SSColors.textWhite.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}