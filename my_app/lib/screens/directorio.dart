import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/parametrosdirec.dart';

import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/tabla.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Directorio extends StatefulWidget {
  static String id = 'directorio';

  @override
  _DirectorioState createState() => _DirectorioState();
}

void _showOverlay(BuildContext context) {
  Navigator.of(context).push(TutorialOverlay());
}

class _DirectorioState extends State<Directorio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: Container(
          color: Color.fromRGBO(50, 75, 205, 1),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(50, 75, 205, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        'assets/imagenes/user.png',
                        width: 100,
                        height: 100,
                      ),
                      elevation: 10,
                    ),
                    Text(
                      'Oliver Carmona',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text('Inicio',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, BottomNavScreen.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text('Perfil',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, ProfilePage.id);
                },
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.library_books,
                  color: Colors.white,
                ),
                title: Text('Directorio',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Directorio.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.rate_review,
                  color: Colors.white,
                ),
                title: Text('Oportunidades',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, OportunidadesPage.id);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                ),
                title: Text('Encuestas',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Encuesta.id);
                },
              ),
              const SizedBox(height: 60),
              Divider(
                height: 8.0,
                color: Colors.white,
                indent: 16.0,
                endIndent: 16.0,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text('Salir',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                onTap: () {
                  Navigator.pushNamed(context, Login.id);
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon.svg",
                height: 55,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        backgroundColor: Palette.primaryColor,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Center(
            child: Column(
              children: <Widget>[
                _crearBIM(),
                _crearDirectorio(),
                _crearBuscar(),
                _craerDatatable(),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () => _showOverlay(context),
                  child: Text('Show Overlay'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearBIM() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/BIMLogo.png',
            height: 130,
            width: 400,
          ),
        ],
      ),
    );
  }

  Widget _crearDirectorio() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Directorio de Socios',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Para> param;
  late bool sortAscending;

  @override
  void initState() {
    super.initState();
    sortAscending = false;
    param = Para.getParametros();
  }

  Widget _craerDatatable() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: 250.0,
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DataTable(
                dividerThickness: 2,
                dataRowHeight: 50,
                headingRowHeight: 50,
                sortColumnIndex: 1,
                sortAscending: sortAscending,
                columns: [
                  DataColumn(
                    label: Text('Foto'),
                  ),
                  DataColumn(
                      label: Text('Socio'),
                      numeric: false,
                      onSort: (columnIndex, ascending) {
                        setState(() {
                          sortAscending = !sortAscending;
                        });
                        ordenarColumna(columnIndex, ascending);
                      }),
                  DataColumn(
                    label: Text('Empresa'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Estado'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Ciudad'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('giro'),
                    numeric: false,
                  ),
                  DataColumn(
                    label: Text('Contacto'),
                    numeric: false,
                  ),
                ],
                rows: param
                    .map(
                      (par) => DataRow(
                        selected: par.selected,
                        onSelectChanged: (s) {
                          setState(() {
                            par.selected = s!;
                          });
                        },
                        cells: [
                          DataCell(
                            Container(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                par.foto,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              par.socio,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.empresa,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.estado,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.ciudad,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.giro,
                            ),
                          ),
                          DataCell(
                            Text(
                              par.contacto,
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(
                      children: param
                          .map(
                            (par) => (par.selected)
                                ? TextSpan(
                                    text: par.foto + '    ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                : TextSpan(
                                    text: '',
                                  ),
                          )
                          .toList(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ordenarColumna(int columnIndex, bool ordenar) {
    if (columnIndex == 1) {
      if (ordenar) {
        param.sort((a, b) => a.socio.compareTo(b.socio));
      } else {
        param.sort((a, b) => b.socio.compareTo(a.socio));
      }
    }
  }

  List<Para> usersFiltered = [];
  TextEditingController controller = TextEditingController();
  String _searchResult = '';

  Widget _crearBuscar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                        usersFiltered = param
                            .where((param) =>
                                param.socio.contains(_searchResult) ||
                                param.empresa.contains(_searchResult))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                      usersFiltered = param;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
