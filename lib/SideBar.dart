import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Busqueda/busqueda_screen.dart';
import 'package:flutter_auth/Screens/ChatList/chatList_screen.dart';
import 'package:flutter_auth/Screens/ComunidadesList/comunidadeslist_screen.dart';
import 'package:flutter_auth/Screens/Estadisticas/estadisticas_screen.dart';
import 'package:flutter_auth/Screens/Feed/feed_screen.dart';
import 'package:flutter_auth/Screens/MisBares/misbares_screen.dart';
import 'package:flutter_auth/Screens/MisInsignias/misinsignias_screen.dart';
import 'package:flutter_auth/Screens/UserList/UserList_screen.dart';
import 'package:flutter_auth/Screens/Videollamada/index.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/Map/ui/pages/home/map_screen.dart';
import 'package:flutter_auth/Screens/EditPerfil/editperfil_screen.dart';
import 'package:flutter_auth/Screens/MisComunidades/miscomunidades_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/data/data.dart';
import 'package:flutter_auth/Screens/BarList/barlist_screen.dart';
import 'package:permission_handler/permission_handler.dart';

import 'generated/l10n.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              margin: const EdgeInsets.only(bottom: 0.0),
              accountName: Text(currentUser.username),
              accountEmail: Text(currentUser.email),
              currentAccountPicture: CircleAvatar(
                radius: 20.0,
                backgroundColor: PrimaryColor,
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              decoration: BoxDecoration(
                color: PrimaryColor,
              )),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              title: Text(
                S.current.inicio,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FeedScreen();
                  }),
                );
              }),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(
              S.current.buscar,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              DeleteCurrentPhoto();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BusquedaScreen();
                }),
              );
            },
          ),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.local_bar,
                color: Colors.white,
              ),
              title: Text(
                S.current.locales,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ListaBaresScreen();
                  }),
                );
              }),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.people_alt,
                color: Colors.white,
              ),
              title: Text(
                S.current.comunidades,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ListaComunidadesScreen();
                  }),
                );
              }),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(
              Icons.chat_bubble,
              color: Colors.white,
            ),
            title: Text(
              S.current.chats,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ListaChatsScreen();
                }),
              );
            },
          ),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.vpn_key_rounded,
                color: Colors.white,
              ),
              title: Text(
                S.current.bares,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MisBaresScreen();
                  }),
                );
              }),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.contact_phone_outlined,
                color: Colors.white,
              ),
              title: Text(
                S.current.miscomunidades,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MisComunidadesScreen();
                  }),
                );
              }),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(
              Icons.room_sharp,
              color: Colors.white,
            ),
            title: Text(
              S.current.mapas,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                //if () permisos
                return MapScreen2();
              }),
            ),
          ),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(
              Icons.emoji_events_rounded,
              color: Colors.white,
            ),
            title: Text(
              S.current.cupones,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              DeleteCurrentPhoto();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return MisInsigniasScreen();
                }),
              );
            },
          ),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.align_vertical_bottom,
                color: Colors.white,
              ),
              title: Text(
                'Ranking',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ListaUsuariosScreen();
                  }),
                );
              }),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
              ),
              title: Text(
                S.current.perfil,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return EditPerfilScreen();
                  }),
                );
              }),
          Divider(
            height: 0.1,
            thickness: 2.0,
            color: Colors.white,
          ),
          ListTile(
            tileColor: Colors.black,
            leading: Icon(
              Icons.camera_indoor_outlined,
              color: Colors.white,
            ),
            title: Text(
              S.current.config,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              DeleteCurrentPhoto();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return IndexPage();
                }),
              );
            },
          ),
          ListTile(
            tileColor: Colors.black,
            leading:
                Icon(Icons.stacked_line_chart_rounded, color: Colors.white),
            title: Text(S.current.estadisticas,
                style: TextStyle(color: Colors.white)),
            onTap: () {
              DeleteCurrentPhoto();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return EstadisticasScreen();
                }),
              );
            },
          ),
          ListTile(
              tileColor: Colors.black,
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                S.current.cerrar,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                DeleteCurrentPhoto();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WelcomeScreen();
                  }),
                );
              }),
        ],
      ),
    );
  }
}
