import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataProduct extends StatefulWidget {
  const DataProduct({super.key});

  @override
  State<DataProduct> createState() => _DataProductState();
}

class _DataProductState extends State<DataProduct> {
  late Future data;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    data = getProductData();
  }

  Future getProductData() async {
    var response = await http.get(
      Uri.parse(
          'https://ilatouba.with6.dolicloud.com/api/index.php/products?DOLAPIKEY=qChcqtpDdG9X&output_format=JSON'),
      headers: {'Accept': 'application/json'},
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des produits"),
        centerTitle: true,
      ),
      body: Card(
        child: FutureBuilder(
            future: data,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Stack(
                  children: [
                    ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: ((context, i) {
                        return ListTile(
                          title: Text(
                            snapshot.data[i]['label'],
                            style: const TextStyle(
                                fontFamily: 'Kanit', fontSize: 20),
                          ),
                          subtitle: Text(snapshot.data[i]['description']),
                          trailing: Text(snapshot.data[i]['price']),
                        );
                      }),
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Ajoutez votre code pour ajouter un nouveau tier ici
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                );
              }
            }),
      ),
    );
  }
}