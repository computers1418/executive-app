import 'package:executive_app/constants/text_style.dart';
import 'package:executive_app/pages/details/details.dart';
import 'package:executive_app/pages/log-book/log-book.dart';
import 'package:executive_app/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'ZabalDEMO'
      ),
      builder: (context, child) {
        return MediaQuery(
            ///Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
            child: child!);
      },
      initialRoute: Routes.login,
      onGenerateRoute: (s) => RouteGenerator(settings: s).getRoute()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black26,
     body: SafeArea(
            child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => const LoginScreen())),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text("Login"),
              ),
            ),
           ),
           InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => const DetailsScreen())),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text("Details"),
              ),
            ),
           ),
          //  InkWell(
          //   onTap: () => Navigator.push(context, MaterialPageRoute(
          //     builder: (context) => const SendingMSG())),
          //   child: Card(
          //     child: Container(
          //       width: double.infinity,
          //       padding: const EdgeInsets.all(10.0),
          //       child: const Text("Sending MSG"),
          //     ),
          //   ),
          //  ),
           InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (context) => const LogBook())),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text("Log Book"),
              ),
            ),
           ),

           InkWell(
            onTap: () => showBottomsheet(context),
            child: Card(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                child: const Text("Pop Up"),
              ),
            ),
           ),
         ],
       ),
     ),
    );
  }

  showBottomsheet(context){
    showModalBottomSheet<void>(
            context: context,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )
            ),
            builder: (BuildContext context) {
              return Container(
                // height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 24,),
                      Container(width: 60, height: 8,
                      decoration: BoxDecoration(
                        color: HexColor("#F5F5F5"),
                        borderRadius: BorderRadius.circular(30)
                      ),),
                      const SizedBox(height: 15,),
                      Text('Message Sent',
                      style: CustomFonts.aloevera28W600(
                        color: HexColor("#654CE1")
                      ),),
                       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                       textAlign: TextAlign.center,
                      style: CustomFonts.aloevera14W400(
                        color: HexColor("#121019").withOpacity(.6)
                      ),),
                      const SizedBox(height: 16,),
                      Image.asset("assets/images/sent.png",
                      height: 120,),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(flex: 3,
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: HexColor("#F3F1FD"),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text("Go To Logbook",
                                style: CustomFonts.aloevera16W600(
                                  color: HexColor("#654CE1")
                                ),),
                              ),
                              )),
                              const SizedBox(width: 8,),
                              Expanded(flex: 2,
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: HexColor("#654CE1"),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: Text("Done",
                                style: CustomFonts.aloevera16W600(
                                  color: HexColor("#FFFFFF")
                                ),),
                              ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 40,),
                    ],
                  ),
                ),
              );
            },
          );
  }
}
