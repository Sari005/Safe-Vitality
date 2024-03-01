import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class RowOfDis extends StatefulWidget {
  const RowOfDis({super.key});

  @override
  State<RowOfDis> createState() => _RowOfDisState();
}

class _RowOfDisState extends State<RowOfDis> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleData.title2.getString(context),
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Disaster');
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
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
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
                          Image.asset(
                            'assets/img/disaster.png',
                            width: 120,
                            height: 120,
                          ),
                        ]),
                    width: 180,
                    height: 160,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Fire');
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
                            Image.asset('assets/img/wildfire.png',
                                width: 120, height: 80),
                            Text(
                              LocaleData.fire.getString(context),
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
                      Navigator.pushNamed(context, '/Flood');
                    },
                    child: GestureDetector(
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
                              Image.asset(
                                'assets/img/flooded-house.png',
                                width: 120,
                                height: 80,
                              ),
                              Text(
                                LocaleData.flood.getString(context),
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                            ]),
                        width: 130,
                        height: 160,
                      ),
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
                            Image.asset('assets/img/earthquake.png',
                                width: 120, height: 80),
                            Text(
                              LocaleData.earthquake.getString(context),
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ]),
                      width: 130,
                      height: 160,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )))
    ]);
  }
}
