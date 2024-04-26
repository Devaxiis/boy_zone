import 'package:flutter/material.dart';

class BagCart extends StatelessWidget {
  final height;
  final width;
  const BagCart({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Color(0xfff38634),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
          const Expanded(
              flex: 2,
              child: Column(children: [],))

        ],
      ),
    );
  }
}
