import 'package:app_motion/config/palette.dart';
import 'package:app_motion/screens/bottom_nav_screen.dart';
import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/usuario_cinco.dart';
import 'package:app_motion/screens/usuario_cuatro.dart';
import 'package:app_motion/screens/usuario_dos.dart';
import 'package:app_motion/screens/usuario_seis.dart';
import 'package:app_motion/screens/usuario_tres.dart';
import 'package:app_motion/screens/usuario_uno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grouped_list/grouped_list.dart';


List list = [
  {"Jazael"},
  {"Maria"},
  {"Eva"},
  {"Perla"},
  {"Jose"},
  {"Antonio"},
];
List _datos = [
  {"id": 1, "title": "Jazael", "group": "A", "ent": "BIM"},
  {"id": 2, "title": "Maria", "group": "A", "ent": "BIM"},
  {"id": 3, "title": "Eva", "group": "B", "ent": "Nestle"},
  {"id": 4, "title": "Perla", "group": "B", "ent": "Nestle"},
  {"id": 5, "title": "Jose", "group": "C", "ent": "Tamsa"},
  {"id": 6, "title": "Antonio", "group": "C", "ent": "Tamsa"},
];

class OportunidadesPage extends StatefulWidget {
   static String id = 'oportunidades_page';
   

  @override
  _OportunidadesPageState createState() => _OportunidadesPageState();

}

class _OportunidadesPageState extends State<OportunidadesPage> {
  
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
                    child: Image.asset('assets/imagenes/user.png', width: 100, height: 100,),
                   elevation: 10,
                ),
                Text('Oliver Carmona', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            
               
              ],

            ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
               color: Colors.white,
                ),
              title: Text('Inicio',style: TextStyle(color: Colors.white, fontSize: 16)),
             
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
              title: Text('Perfil',style: TextStyle(color: Colors.white, fontSize: 16)),
             
              onTap: () {
                 Navigator.pushNamed(context, ProfilePage.id);
              },
            ),
           
              const SizedBox(height: 10),
             ListTile(
              leading: Icon(
                Icons.library_books,
               color: Colors.white,
                ),
              title: Text('Directorio', style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
              title: Text('Oportunidades',style: TextStyle(color: Colors.white,fontSize: 16)),
              
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
              title: Text('Encuestas',style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
              title: Text('Salir',style: TextStyle(color: Colors.white,fontSize: 16)),
             
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
         body: Stack(
        children: <Widget>[
          GroupedListView<dynamic, String>(
            elements: _datos,
            groupBy: (item) => item['group'],
            groupSeparatorBuilder: (groupValue) => Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            groupValue,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff5880aa)),
                        ),
                        Expanded(
                            child: Divider(
                          color: Color(0xff43537e),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            itemBuilder: (context, item) {
              return Card(
                elevation: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    switch ('${item['id']}') {
                      case "1":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UsuarioUno()),
                        );
                        break;
                      case "2":
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UsuarioDos()),
                        );
                        break;
                      case "3":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioTres()),
                        );
                        break;
                      case "4":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioCuatro()),
                        );
                        break;
                      case "5":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioCinco()),
                        );
                        break;
                      case "6":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsuarioSeis()),
                        );
                        break;
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRect(
                            child: Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/pastel-glyph/2x/person-male--v2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    item['title'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.corporate_fare,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text('${item['ent']}'))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            groupComparator: (group1, group2) => group1.compareTo(group2),
            itemComparator: (item1, item2) =>
                item1['title'].compareTo(item2['title']),
            useStickyGroupSeparators: true,
            floatingHeader: false,
            order: GroupedListOrder.ASC,
          ),
        ],
      ),
    );
  }
   



  }