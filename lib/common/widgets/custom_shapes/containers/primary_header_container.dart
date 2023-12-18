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
      child: Container(
        color: ZColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
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
            ],
          ),
        ),
      ),
    );
  }
}
