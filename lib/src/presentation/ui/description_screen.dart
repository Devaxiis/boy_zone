import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app/src/domain/model/store_model/store_model.dart';

class DescriptionScreen extends StatefulWidget {
  final StoreModel value;
  const DescriptionScreen({super.key, required this.value});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image(image:CachedNetworkImageProvider(widget.value.image??"") )),
                Expanded(child: Text(widget.value.description,style: const TextStyle(color: Color(0xfff38634))) ?? const Text("")),
              ],
            ),
          ) ),
    );
  }
}
