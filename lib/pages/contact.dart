import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataContact extends StatefulWidget {
  const DataContact({super.key});

  @override
  State<DataContact> createState() => _DataContactState();
}

class _DataContactState extends State<DataContact> {
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
          'https://ilatouba.with6.dolicloud.com/api/index.php/contacts?DOLAPIKEY=qChcqtpDdG9X&output_format=JSON'),
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
        title: const Text("Liste des conta"),
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
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: ((context, i) {
                      return ListTile(
                        title: Text(
                          (snapshot.data[i]['firstname'] ?? '') +
                              ' ' +
                              (snapshot.data[i]['lastname'] ?? ''),
                          style: const TextStyle(
                              fontFamily: 'Kanit', fontSize: 20),
                        ),
                        subtitle: Text(snapshot.data[i]['phone_mobile'] ?? ''),
                        trailing: Text(snapshot.data[i]['town'] ?? ''),
                      );
                    }));
              }
            }),
      ),
    );
  }
}
