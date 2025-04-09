import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
    required this.colors,
    });

 final Widget child;
 final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
          center: Alignment.center,
          radius: 1.0,
          )
        
        // LinearGradient(
        //   colors: colors,
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        // ),
      ),
      child: child,
    );
  }
}