// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

// class HistoryView extends GetView<HistoryController> {
//   const HistoryView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//        home: Scaffold(
//            body: Container(
//              child: Column(
//                mainAxisSize: MainAxisSize.max,
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Expanded(
//                    child: ListView.builder(
// // scrollDirection: Axis.horizontal,
//                   //  itemCount: cryptoData.length,
//                    itemBuilder: (context, index) {
//                      return Container(
//                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//                        height: 220,
//                        width: double.maxFinite,
//                        child: Card(
//                          elevation: 5,
//                          child: Container(
//                            decoration: BoxDecoration(
//                              border: Border(
//                               //  top: BorderSide(
//                               //      width: 2.0, 
//                               //      color: cryptoData[index][‘iconColor’]),
//                              ),
//                              color: Colors.white,
//                            ),
//                            child: Padding(
//                              padding: EdgeInsets.all(7),
//                              child: Stack(children: <Widget>[
//                                Align(
//                                  alignment: Alignment.centerRight,
//                                  child: Stack(
//                                    children: <Widget>[
//                                      Padding(
//                                          padding: const EdgeInsets.only(left: 10, top: 5),
//                                          child: Column(
//                                            children: <Widget>[
// //                                              Row(
// //                                                children: <Widget>[
// //                                                  cryptoIcon(cryp
// // toData[index]),
// //                                                SizedBox(
// //                                                  height: 10,
// //                                                ),
// //                                                cryptoNameSymbol(cr
// // yptoData[index]),
// //                                                Spacer(),
// //                                                cryptoChange(cr
// // yptoData[index]),
// //                                                SizedBox(
// //                                                  width: 10,
// //                                                ),
// //                                                changeIcon(cr
// // yptoData[index]),
// //                                                SizedBox(
// //                                                  width: 20,
// //                                                )
// //                                              ],
// //                                            ),
// //                                            Row(
// //                                            children: <Widget>[
// //                                              cryptoAmount(cr
// // yptoData[index])
// //                                            ],
// //                                          )
//                                        ],
//                                       ))
//                                  ],
//                                ),
//                              )
//                            ]),
//                          ),
//                        ),
//                      ),
//                    );
//                  }),
//            ),
//          ],
//        ),
//      )));
//  }
// Widget cryptoIcon(data) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 15.0),
//     // child: Align(
//     //     alignment: Alignment.centerLeft,
//     //     child: Icon(
//     //       // data[‘icon’],
//     //       color: Colors.amber,
//     //       size: 40,
//     //     )),
//   );
//  }
// Widget cryptoNameSymbol(data) {
//   return Align(
//     alignment: Alignment.centerLeft,
//     child: RichText(
//       text: TextSpan(
//         text: "Test",
//         style: TextStyle(
//             fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
//         children: <TextSpan>[
//           TextSpan(
//               text: "test",
//               style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//  }
// Widget cryptoChange(data) {
//   return Align(
//     alignment: Alignment.topRight,
//     child: RichText(
//       text: TextSpan(
//         text: "Test",
//         style: TextStyle(
//             fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
//         children: <TextSpan>[
//           TextSpan(
//               text: "Test",
//               style: TextStyle(
//                   color: Colors.amberAccent,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold)),
//          ],
//        ),
//      ),
//    );
//  }
// // Widget changeIcon(data) {
// //   return Align(
// //       alignment: Alignment.topRight,
// //       child: data[‘change’].contains(‘-’)
// //           ? Icon(
// //         Typicons.arrow_sorted_down,
// //         color: data[‘changeColor’],
// //         size: 30,
// //       )
// //           : Icon(
// //         Typicons.arrow_sorted_up,
// //         color: data[‘changeColor’],
// //         size: 30,
// //       ));
// //  }
// Widget cryptoAmount(data) {
//   return Align(
//   alignment: Alignment.centerLeft,
//   child: Padding(
//     padding: const EdgeInsets.only(left: 20.0),
//     child: Row(
//       children: <Widget>[
//         RichText(
//           textAlign: TextAlign.left,
//           text: TextSpan(
//             text: "TEst",
//             style: TextStyle(
//               color: Colors.grey,
//               fontSize: 35,
//             ),
//             children: <TextSpan>[
//               TextSpan(
//                   text: "TEST",
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontStyle: FontStyle.italic,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// );
// }
// }
class HistoryView extends StatelessWidget {
  final HistoryController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Display'),
      ),
      body: Center(
        child: Obx(() {
          // if (userController.dataList.isEmpty) {
          //   return CircularProgressIndicator();
          // } else {
            return ListView.builder(
              itemCount: userController.dataList.length,
              itemBuilder: (context, index) {
                final item = userController.dataList[index];
                print(item);
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text(item['id'].toString()),
                  // subtitle: Text(item['description']),
                );
              },
            );
          }
        // }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userController.fetchData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}