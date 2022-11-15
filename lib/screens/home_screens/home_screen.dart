import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:poet_sera/constants/lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const id = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'app_name'.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    itemCount: poetsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            poetsList[index].getPoetName(),
                            style: const TextStyle(fontSize: 30),
                          )));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
