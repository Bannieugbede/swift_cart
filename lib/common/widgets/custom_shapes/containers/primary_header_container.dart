import 'package:flutter/material.dart';
import 'package:swift_cart/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:swift_cart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:swift_cart/utils/constants/colors.dart';

class ZPrimaryHeaderContainer extends StatelessWidget {
  const ZPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ZCurvedEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          // padding: const EdgeInsets.only(bottom: 0),
          color: ZColors.primary,
          child: Stack(
            children: [
              Positioned(
                  right: -250,
                  top: -150,
                  child: ZCircularContainer(
                      backgroundColor: ZColors.textWhite.withOpacity(0.1))),
              Positioned(
                right: -300,
                top: 100,
                child: ZCircularContainer(
                    backgroundColor: ZColors.textWhite.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
