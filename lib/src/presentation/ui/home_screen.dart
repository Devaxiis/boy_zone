
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app/src/core/service_locator.dart';
import 'package:store_app/src/domain/model/store_model/store_model.dart';
import 'package:store_app/src/presentation/ui/description_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoreModel> data = [];

  @override
  void initState() {
    super.initState();
    getAllData();
  }
  void getAllData()async {
    data = await storeRepository.fetchAllCurrencies();
    setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// #Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.2 / 3,
              ),
              itemCount: data.length,
              itemBuilder: (_,index){
                final value = data[index];
                return ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Material(
                    child: InkWell(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DescriptionScreen(value: value))),
                      child: Container(
                        padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        decoration: const BoxDecoration(
                        color: Color(0x55ffffff),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  height: MediaQuery.sizeOf(context).height,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:CachedNetworkImageProvider(value.image),fit: BoxFit.contain),
                                      borderRadius: const BorderRadius.all(Radius.circular(10))
                                  ),
                                )),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Text(value.title,style: const TextStyle(color: Color(0xfff38634),overflow: TextOverflow.fade),)),
                                    Expanded(child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('Price:',style: TextStyle(color: Color(0xfff38634),fontSize: 15,fontWeight: FontWeight.w500),),
                                        Text("${value.price}",style: const TextStyle(color: Color(0xfff38634))),
                                      ],
                                    )),
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
      )
    );
  }
}
