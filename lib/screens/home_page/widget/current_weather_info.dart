import 'package:flutter/material.dart';

class InfoCurrentWeather extends StatelessWidget {
  const InfoCurrentWeather(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.title5,
      required this.title6,
      required this.title7,
      required this.title8,
      required this.title9,
      required this.subtitle1,
      required this.subtitle2,
      required this.subtitle3,
      required this.subtitle4,
      required this.subtitle5,
      required this.subtitle6,
      required this.subtitle7,
      required this.subtitle8,
      required this.subtitle9});
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;
  final String title8;
  final String title9;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;
  final String subtitle4;
  final String subtitle5;
  final String subtitle6;
  final String subtitle7;
  final String subtitle8;
  final String subtitle9;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(120, 255, 255, 255)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title1,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle1,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title2,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle2,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title3,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle3,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title4,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle4,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title5,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle5,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title6,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle6,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title7,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle7,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title8,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle8,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        title9,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        subtitle9,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
