// import 'dart:ffi';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sem_3_project/home_page.dart';
//
//
// class FavouritePage extends StatelessWidget {
//   const FavouritePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffFFFFF0),
//       appBar: AppBar(
//         title: Text('Favourites',
//           style: TextStyle(
//               fontSize: 22,
//               color: Colors.grey,
//               fontWeight: FontWeight.w600),),
//         elevation: 0,
//         backgroundColor: Color(0xff060C0F),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
//             },
//             icon: Icon(Icons.arrow_back_ios_new_sharp,
//               size: 22,
//               color: Color(0xffC0C0C0),
//             )
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(24),
//           child: Column(
//             children: [
//               GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 12.0,
//                     mainAxisSpacing: 12.0,
//                     mainAxisExtent: 320),
//                 itemCount: 10,
//                 itemBuilder: (
//                     BuildContext context,
//                     int index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Color(0xffC0C0C0)
//                     ),
//                     child: Column(
//                       children: [
//                         ClipRRect(
//                           borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
//                           child: Image.network("${.elementAt(index)['images']}",
//                             height: 180,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Padding(padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("${gridMap.elementAt(index)['title']}",
//                                 style: Theme.of(context).textTheme.titleMedium!.merge(TextStyle(fontWeight: FontWeight.w700)),),
//                               const SizedBox(height: 8.0),
//                               Text("${gridMap.elementAt(index)['price']}",
//                                 style: Theme.of(context).textTheme.titleSmall!.merge(TextStyle(fontWeight: FontWeight.w700)),
//                               ),
//                               SizedBox(height: 8.0),
//                               Row(
//                                 children: [
//                                   IconButton(onPressed: () {},
//                                       icon: Icon(CupertinoIcons.heart)),
//                                   IconButton(onPressed: () {},
//                                       icon: Icon(CupertinoIcons.cart)),
//                                 ],
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }