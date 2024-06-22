import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/storage_helper/storage_manager.dart';
import 'package:tracking_app/extra.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  final List<String> _images = [
    "assets/images/purchase.png",
    "assets/images/number.png",
    "assets/images/shipment.png",
  ];
  final List<String> _titles = [
    "Buy An Item",
    "Tracking Number",
    "Track Shipment"
  ];
  final List<String> _description = [
    "As an online shopper, when you buy an item , you receive a tracking number.",
    "Received Tracking Number!,Next step is just around the corner.",
    "Track your item until it is delivered to your house door."
  ];
  int selectedIndex = 0;
  String nextButtonName = "Next";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView(
                   onPageChanged: (index){
                     setState(() {
                       selectedIndex = index;
                       if(selectedIndex == 2){
                         nextButtonName = "Get Started";
                       } else {
                         nextButtonName = "Next";
                       }
                     });

                   },
                  controller: _pageController,
                   children: List.generate(_images.length, (index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(_images[index],width: 250,height: 250,),
                    const SizedBox(height: 20,),
                    Text(_titles[index],style: Extras.getBoldFont().copyWith(fontSize: 25),),
                    const SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40),
                      child: Text(_description[index],style: Extras.getMediumFont().copyWith(fontSize: 20),
                      textAlign: TextAlign.center,),
                    ),
                  ],
                );
              }).toList(),
            )),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index){
                      return Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 10,
                        height: 10,
                        decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedIndex == index ? Colors.grey : Colors.black
                        ),
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          StorageManager.setValue(true);
                          Get.offNamed(Extras.trackingRoute);
                        }, child: Text("Skip", style: Extras.getBoldFont().copyWith(fontSize: 18),)),
                        Expanded(child: Container()),
                        ElevatedButton(onPressed: (){
                          if(nextButtonName == "Get Started"){
                            StorageManager.setValue(true);
                            Get.offNamed(Extras.trackingRoute);
                          }
                        }, child: Text(nextButtonName, style: Extras.getBoldFont().copyWith(fontSize: 18),))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
