import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({Key? key}) : super(key: key);

  var phoneNames = [
    "Samsung",
    "Apple",
    "OnePlus",
    "Xiaomi",
    "Oppo",
    "Vivo",
    "Realme",
    "Nokia",
    "Motorola",
    "Google"
  ];
  var phonePrices = [
    "1000",
    "1200",
    "800",
    "500",
    "600",
    "700",
    "400",
    "300",
    "200",
    "100"
  ];
  var phoneImages = [
    "https://www.excelestore.com.bd/public/uploads/all/Ubdj9Jm1nR7KBsL9EDHO5uRZ9llN1J8yGA3ZKoMv.webp",
    "https://www.ineedamobile.com/wp-content/uploads/2019/03/iphone-x-600x598.png",
    "https://img.etimg.com/photo/msid-98815516,imgsize-24654/LavaZ3.jpg",
    "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/uk/advisor/wp-content/uploads/2020/11/phones-switch-apps.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjRnFC1Zv64KyDVKbof9V3d_aRYzroYToFo6Amh80ghg2QwtS-VMKs5sIzdncd_HjSvbM&usqp=CAU",
    "https://www.ineedamobile.com/wp-content/uploads/2019/03/iphone-x-600x598.png",
    "https://www.kom-dami.com/wp-content/uploads/2023/01/Symphony-L136-Feature-Phone-300x300.jpg",
    "https://www.ineedamobile.com/wp-content/uploads/2019/03/iphone-x-600x598.png",
    "https://www.kom-dami.com/wp-content/uploads/2023/01/Symphony-L136-Feature-Phone-300x300.jpg",
    "https://www.ineedamobile.com/wp-content/uploads/2019/03/iphone-x-600x598.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phoneNames.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Row(
            children: [
              Image.network(
                phoneImages[index],
                height: 200,
                width: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${phoneNames[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("${phoneNames[index]} is a nice phone",
                      style: TextStyle(fontSize: 15)),
                  Text("Price: ${phonePrices[index]}",
                      style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
