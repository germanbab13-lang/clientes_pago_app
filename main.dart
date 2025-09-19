import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final List<Map<String, dynamic>> initialClients = [
  {
    "nombre": "PANCHO",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "RENTERA JOSE RAMOS",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "YAYA",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "CASA",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "RUBEN",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "RENTERO QUINTA",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "DEICY",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "RENTERO BODEGA 4",
    "fecha": "2026-02-30",
    "monto": 400
  },
  {
    "nombre": "RENTERO ARRIBA TACOS",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "VANE",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "SONIA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "MARCOS",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "TOA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "PANCHOO",
    "fecha": "2026-02-28",
    "monto": 400
  },
  {
    "nombre": "PANCHITA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "PRISCILA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "TELMA",
    "fecha": "2025-09-22",
    "monto": 400
  },
  {
    "nombre": "ALEXIS",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "NANCY",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "PATY TIA DE JENNY",
    "fecha": "2025-XX-10",
    "monto": 400
  },
  {
    "nombre": "MAIDY",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "YURI",
    "fecha": "2025-10-15",
    "monto": 400
  },
  {
    "nombre": "ISSA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "RENTEROS KAREN",
    "fecha": "2025-XX-17",
    "monto": 400
  },
  {
    "nombre": "BODEGA MACARIO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "HERMANA DE TOA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "RENTERO CHAQUIRO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "HUGO",
    "fecha": "2025-10-04",
    "monto": 400
  },
  {
    "nombre": "SOBRINA CHELO",
    "fecha": "2025-10-04",
    "monto": 400
  },
  {
    "nombre": "RECIO",
    "fecha": "2025-10-04",
    "monto": 400
  },
  {
    "nombre": "NEREYDA",
    "fecha": "2025-10-04",
    "monto": 400
  },
  {
    "nombre": "XHIOMARA",
    "fecha": "2025-XX-30",
    "monto": 400
  },
  {
    "nombre": "SOBRINA DE BERCHA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "GEROS",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "JUNIOR",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "XOCHITL",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "CABALLO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "HOMERO",
    "fecha": "2025-10-01",
    "monto": 400
  },
  {
    "nombre": "BLANCA",
    "fecha": "2025-10-05",
    "monto": 400
  },
  {
    "nombre": "SEYA",
    "fecha": "2025-10-05",
    "monto": 400
  },
  {
    "nombre": "CESAR",
    "fecha": "2025-10-05",
    "monto": 400
  },
  {
    "nombre": "CAMOTE",
    "fecha": "2025-09-18",
    "monto": 400
  },
  {
    "nombre": "NALLE",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "COCO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "COMINO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "MIRANDA",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "MARISOL",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "FELIPIYO",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "MIRIAM",
    "fecha": "2025-09-30",
    "monto": 400
  },
  {
    "nombre": "ROQUE",
    "fecha": "2025-10-01",
    "monto": 400
  },
  {
    "nombre": "TOO",
    "fecha": "2025-10-01",
    "monto": 400
  },
  {
    "nombre": "ISAIAS",
    "fecha": "2025-10-01",
    "monto": 400
  },
  {
    "nombre": "MAGY",
    "fecha": "2025-10-01",
    "monto": 400
  },
  {
    "nombre": "REGINA",
    "fecha": "2025-10-01",
    "monto": 400
  }
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> clients = List.from(initialClients);
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    var androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    var initSettings = InitializationSettings(android: androidInit);
    flutterLocalNotificationsPlugin.initialize(initSettings);
    scheduleDailyNotificationCheck();
  }

  void scheduleDailyNotificationCheck() {
    // This app schedules a daily check at 10:00 local time when the app starts.
    // For persistent background notifications, further platform-specific setup is required.
    DateTime now = DateTime.now();
    DateTime todayAt10 = DateTime(now.year, now.month, now.day, 10, 0);
    if (now.isAfter(todayAt10)) {
      // schedule for tomorrow
      todayAt10 = todayAt10.add(Duration(days: 1));
    }
    Duration until = todayAt10.difference(now);
    Future.delayed(until, () async {
      showNotificationsForToday();
      // after firing, schedule again in 24 hours
      scheduleDailyNotificationCheck();
    });
  }

  void showNotificationsForToday() {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    List todays = clients.where((c) => c['fecha'] == today).toList();
    for (var i = 0; i < todays.length; i++) {
      var cliente = todays[i];
      flutterLocalNotificationsPlugin.show(
          i,
          'Pago hoy',
          'Hoy paga: ' + (cliente['nombre'] ?? ''),
          NotificationDetails(android: AndroidNotificationDetails('channelId', 'Pagos', importance: Importance.max, priority: Priority.high))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    List todays = clients.where((c) => c['fecha'] == today).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Pagos - Hoy')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              if (todays.length == 0)
                Text('Hoy no hay pagos programados.'),
              ...todays.map((c) => Card(
                child: ListTile(
                  title: Text(c['nombre'] ?? ''),
                  subtitle: Text('Monto: \$' + (c['monto']?.toString() ?? '400')),
                ),
              )).toList(),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Agregar cliente (edítalo en el código)'),
                onPressed: () {
                  // For now, adding via code. You can extend this UI to add clients.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}