import 'package:eoffice/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Jabatan());

class Jabatan extends StatefulWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const Jabatan({super.key, Key});

  @override
  // ignore: library_private_types_in_public_api
  _JabatanState createState() => _JabatanState();
}

class _JabatanState extends State<Jabatan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(),
        body: _mainBody(),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      // Title name for the app bar
      title: const Text(
        'Dashboard eOffice',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700
        ),
      ),
      // adjust the style to the app bar 
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(100, 255, 255, 255).withOpacity(0.7),
      centerTitle: true,
      // add the arrow icons to the app bar
      // leading: IconButton(
      //   icon: const Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      //   onPressed: () {
      //     // Navigator.of(context).pop();
      //   },
      // ),
    );
  }
}

class _mainBody extends StatelessWidget {
  const _mainBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Jarak antara AppBar dan body
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Pilih Jabatan Kerja:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 10),
          const Text(
            "Aplikasi akan menampilkan data surat berdasarkan jabatan yang dipilih. Silahkan laporkan kepada admin eoffice di perangkat daerah masing-masing apabila aplikasi menampilkan data jabatan yang tidak sesuai.",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(46, 39, 34, 59),
                  offset: Offset(2, 2),
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Dashboard()));
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
                          "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            Text(
                              "Dinas Komunikasi dan Informatika",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.5,
                              ),
                            ),
                            Text(
                              "PRANATA KOMPUTER Pertama",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Definitif",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
