import 'package:app_motion/screens/directorio.dart';
import 'package:app_motion/screens/empresa.dart';
import 'package:app_motion/screens/encuestapendiente.dart';
import 'package:app_motion/screens/login.dart';
import 'package:app_motion/screens/oportunidades_page.dart';
import 'package:app_motion/screens/profilepage.dart';
import 'package:app_motion/screens/personal.dart';
import 'package:flutter/material.dart';
import 'package:app_motion/config/palette.dart';
import 'package:app_motion/config/styles.dart';
import 'package:app_motion/data/data.dart';
import 'package:app_motion/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
 void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 140,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }
  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
      
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Configuración Personal'),
         onTap: () {
             
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Personal()),
            );
              },
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Configuración empresa'),
        onTap: () {
         
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Empresa()),
            );
              },
        ),
      ],
    );
  }
 
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
         actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.settings),
               onPressed: () => _onButtonPressed(),
            ),
          ],
        ),
    
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildYourOwnTest(screenHeight),
          _buildYourOwnTes(screenHeight),
           _buildYourOwnTe(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Dashboard',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Como funciona la app Motion?',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Encontrarás nuestro catalogo de cursos, eventos, socios y podrás consultar a detalle el estado de tu membresía',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.tablet_rounded,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Ver membresía',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                    
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Para tí',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: prevention
                  .map((e) => Column(
                        children: <Widget>[
                          Image.asset(
                            e.keys.first,
                            height: screenHeight * 0.12,
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Text(
                            e.values.first,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: <Widget>[
            
            Image.asset('assets/imagenes/re.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Eventos',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Los eventos que necesitas\npara nuestros socios.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  SliverToBoxAdapter _buildYourOwnTes(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/imagenes/logoflutter.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Cursos',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Los mejores cursos impartidos\npara mayor conocimiento.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  SliverToBoxAdapter _buildYourOwnTe(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/imagenes/user1.jpg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Socios',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Ponte en contacto con\nnuestros socios en el directorio.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
