import 'package:flutter/material.dart';
import 'package:app_mobile_dolibarr/pages/product.dart';
import 'package:app_mobile_dolibarr/pages/entrepot.dart';
import 'package:app_mobile_dolibarr/pages/tiers.dart';
import 'package:app_mobile_dolibarr/pages/contact.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          width: 250,
          child: Image.asset('images/dolibarr.jpeg'),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const DataProduct()),
                      );
                    },
                    icon: Image.asset('images/produit.png'),
                    iconSize: 100,
                  ),
                ),
                const Text(
                  "Produits",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Kanit',
                  ),
                ),
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const DataContact()),
                      );
                    },
                    icon: Image.asset('images/contact.png'),
                    iconSize: 100,
                  ),
                ),
                const Text(
                  "Contacts",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Kanit',
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const DataTier()),
                      );
                    },
                    icon: Image.asset('images/Collaborateurs.png'),
                    iconSize: 100,
                  ),
                ),
                const Text(
                  "Tiers",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Kanit',
                  ),
                )
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 15),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const DataEntrepot()),
                      );
                    },
                    icon: Image.asset('images/entrepot.png'),
                    iconSize: 100,
                  ),
                ),
                const Text(
                  "Entrepôts",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Kanit',
                  ),
                )
              ],
            )
          ],
        )
      ],
    ));
  }
}
