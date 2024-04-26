import 'package:flutter/material.dart';
import 'package:store_app/src/presentation/components/bag_cart.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
                itemBuilder: (_,index){
                  return BagCart(height:height,width: width,);
                },
                separatorBuilder:(__,item){
                  return const SizedBox(height: 15);
                },
                itemCount: 10),
          )
      )
    );
  }
}
