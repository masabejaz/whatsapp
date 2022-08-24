import 'package:flutter/material.dart';
import 'package:whatsapp/screens/setting/setting_screen.dart';

void main() {
  runApp(const MyWhatsApp());
}

class MyWhatsApp extends StatelessWidget {
  const MyWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF128C7E, color);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/setting': (context) => const SettingScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp App'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.more_vert_outlined),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              child: const Text('Settings'))),
    );
  }
}

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};


// class MyWhatsApp extends StatelessWidget {
//   const MyWhatsApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             actions: const [
//               Icon(
//                 Icons.search,
//               ),
//               SizedBox(
//                 width: 15.0,
//               ),
//               Icon(Icons.more_vert)
//             ],
//             title: const Text('WhatsApp'),
//             bottom: const TabBar(tabs: [
//               Icon(Icons.camera),
//               Text('Chats'),
//               Text('Status'),
//               Text('Calls'),
//             ]),
//           ),
//           body: TabBarView(
//             children: [
//               const Center(child: Text('Camera')),
//               ListView(
//                 children: const [
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                   ListTile(
//                     trailing: Text('6:11 PM'),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
//                     ),
//                     title: Text('Umair Cf'),
//                     subtitle: Text('Phr delete button press kr'),
//                   ),
//                 ],
//               ),
//               const Text('Status'),
//               const Text('Calls'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyCamPage extends StatefulWidget {
//   const MyCamPage({super.key});

//   @override
//   State<MyCamPage> createState() => _MyCamPageState();
// }

// class _MyCamPageState extends State<MyCamPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Came Page'),
//     );
//   }
// }

// class MyChatPage extends StatefulWidget {
//   const MyChatPage({super.key});

//   @override
//   State<MyChatPage> createState() => _MyChatPageState();
// }

// class _MyChatPageState extends State<MyChatPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Chat Page'),
//     );
//   }
// }

// class MyStatusPage extends StatelessWidget {
//   const MyStatusPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Status Page'),
//     );
//   }
// }

// class MyCallPage extends StatefulWidget {
//   const MyCallPage({super.key});

//   @override
//   State<MyCallPage> createState() => _MyCallPageState();
// }

// class _MyCallPageState extends State<MyCallPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Call Page'),
//     );
//   }
// }
