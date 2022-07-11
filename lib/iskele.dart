import 'package:flutter/material.dart';
import 'package:tarihte/model/tarih_model.dart';
import 'package:tarihte/servis.dart';


class Iskele extends StatefulWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  State<Iskele> createState() => _IskeleState();
}

class _IskeleState extends State<Iskele> {
  List<Tarihtebugun> tarih = [];
  @override
  void initState() {
    TarihServis.getTarih().then((value) {
      setState(() {
        tarih = value!;
      });
    });
    print(tarih);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: FutureBuilder(
      future: TarihServis.getTarih(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text("Tarihte Bugün",style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),),
                ),
                Expanded(
                  flex: 12,
                  child: ListView.builder(
                    itemCount: tarih.length,
                    itemBuilder: ((context, index) {
                    var oanKiIndex = tarih[index];
                    return Card(
                      elevation: 10,
                        margin: const EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    oanKiIndex.durum.toString(),
                                    style: const TextStyle(
                                        fontSize: 25, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "${oanKiIndex.gun}/${oanKiIndex.ay}/${oanKiIndex.yil}",
                                    style: const TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  oanKiIndex.olay.toString(),
                                  style: const TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ));
                  })),
                ),
              ],
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container();
      }),
    )));
  }
}
