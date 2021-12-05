import 'package:flutter/material.dart';

class UsuarioSeis extends StatefulWidget {
  const UsuarioSeis({Key? key}) : super(key: key);

  @override
  _UsuarioSeisState createState() => _UsuarioSeisState();
}

class _UsuarioSeisState extends State<UsuarioSeis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff5880aa),
        actions: [
          Container(
            child: Align(
                alignment: Alignment(-0.15, 0.00),
                child: Text("Detalles",
                    style:
                        TextStyle(fontWeight: FontWeight.w100, fontSize: 20))),
            width: 375,
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff5880aa), Color(0xff43537e)])),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.account_box,
                  color: Colors.black,
                  size: 150,
                ),
                Text(
                  "Antonio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black45,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
          //Usa Align
          Align(
            alignment: Alignment(-0.30, -0.30),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.corporate_fare,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Empresa:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Tamsa",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.13, -0.13),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.phone,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Teléfono:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("394820101",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.04, 0.04),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.golf_course_sharp,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Etapa:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Ganada",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.21, 0.21),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.calendar_today,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Fecha:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("13/07/2021",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.68, 0.68),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 105),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.check_box,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Requerimientos:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.72, 0.72),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.only(top: 10, bottom: 8),
              child: TextField(
                maxLines: 3,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Requerimientos'),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.91, 0.91),
            child: Card(
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRect(
                        child: Icon(
                          Icons.check_box,
                          size: 22,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          children: [
                            Text(
                              "Estado:",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.00, 0.90),
            child: Container(
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: Text("Estado"),
              ),
            ),
          )
        ],
      ),
    );
  }
}