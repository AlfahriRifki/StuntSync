import 'package:flutter/material.dart';

import 'curved_edges.dart';

class SSCurvedEdgeWidget extends StatelessWidget {
  const SSCurvedEdgeWidget({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SSCustomCurvedEdges(),
      child: child,
    );
  }
}