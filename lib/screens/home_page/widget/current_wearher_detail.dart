import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton(
      {super.key, required this.searchText, required this.cityController1});
  final TextEditingController cityController1;
  final VoidCallback searchText;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  //  color:  Color.fromARGB(
                  //   120, 255, 255, 255)
                ),
                child: AlertDialog(
                  backgroundColor: const Color.fromARGB(120, 255, 255, 255),
                  title: const Text("Type Your Location"),
                  content: SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        TextField(
                          controller: cityController1,
                        ),
                        ElevatedButton(
                            onPressed: searchText, child: const Text("Search"))
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(
          Icons.search,
          size: 32,
        ));
  }
}



  // IconButton(
                        //     onPressed: () {
                        //       showDialog(
                        //         context: context,
                        //         builder: (BuildContext context) {
                        //           return Container(
                        //             height: 200,
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(16),
                        //               //  color:  Color.fromARGB(
                        //               //   120, 255, 255, 255)
                        //             ),
                        //             child: AlertDialog(
                        //               backgroundColor: const Color.fromARGB(
                        //                   120, 255, 255, 255),
                        //               title: Text("Type Your Location"),
                        //               content: Container(
                        //                 height: 100,
                        //                 child: Column(
                        //                   children: [
                        //                     TextField(
                        //                       controller: cityController,
                        //                     ),
                        //                     ElevatedButton(
                        //                         onPressed: () {
                        //                           searchText =
                        //                               cityController.text;
                        //                           setState(() {});
                        //                           Navigator.pop(context);
                        //                         },
                        //                         child: Text("Search"))
                        //                   ],
                        //                 ),
                        //               ),
                        //             ),
                        //           );
                        //         },
                        //       );
                        //     },
                        //     icon: const Icon(
                        //       Icons.search,
                        //       size: 32,
                        //     )),
