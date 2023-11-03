// import 'package:draggable_scrollbar/draggable_scrollbar.dart';
// import 'package:flutter/material.dart';


// class Sidebar extends StatefulWidget {
//   const Sidebar({super.key});

//   @override
//   State<Sidebar> createState() => _SidebarState();
// }

// class _SidebarState extends State<Sidebar> {
//   final ScrollController mySscrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return DraggableScrollbar(
//   controller: mySscrollController,
//   child: ListView.builder(
//     controller: mySscrollController,
//     itemCount: 1000,
//     itemExtent: 100.0,
//     itemBuilder: (context, index) {
//       return Container(
//         padding: EdgeInsets.all(8.0),
//         child: Material(
//           elevation: 4.0,
//           borderRadius: BorderRadius.circular(4.0),
//           color: Colors.cyan[index % 9 * 100],
//           child: Center(
//             child: Text(index.toString()),
//           ),
//         ),
//       );
//     },
//   ),
//   heightScrollThumb: 48.0,
//   backgroundColor: Colors.blue,
//   scrollThumbBuilder: (
//     Color backgroundColor,
//     Animation<double> thumbAnimation,
//     Animation<double> labelAnimation,
   
   
//   // }) {
//   //   return FadeTransition(
//   //     opacity: thumbAnimation,
//   //     child: Container(
//   //       height: height,
//   //       width: 20.0,
//   //       color: backgroundColor,
//   //     ),
//   //   );
//   // },
// ));
//   }
// }