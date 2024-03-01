import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';
import 'package:lottie/lottie.dart';

class RowOfMed extends StatefulWidget {
  const RowOfMed({super.key});

  @override
  State<RowOfMed> createState() => _RowOfMedState();
}

class _RowOfMedState extends State<RowOfMed> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleData.title1.getString(context),
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Conditions');
                },
                child: Text(
                  LocaleData.more.getString(context),
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.tertiary),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color: Theme.of(context).colorScheme.primary),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset('assets/lottie/medical-sign.json',
                            width: 120, height: 120),
                      ]),
                  width: 180,
                  height: 160,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Bleeding');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Theme.of(context).colorScheme.primary),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/img/head.png',
                              width: 120, height: 80),
                          Text(
                            LocaleData.bleed.getString(context),
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ]),
                    width: 130,
                    height: 160,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/HeartAttack');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Theme.of(context).colorScheme.primary),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/img/heart-attack.png',
                              width: 120, height: 80),
                          Text(
                            LocaleData.hearta.getString(context),
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ]),
                    width: 130,
                    height: 160,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Coming');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Theme.of(context).colorScheme.primary),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/img/injury.png',
                              width: 120, height: 80),
                          Text(
                            LocaleData.injury.getString(context),
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ]),
                    width: 130,
                    height: 160,
                  ),
                )
              ])))
    ]);
  }
}
