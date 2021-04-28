import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.indigo,
        textTheme: TextTheme(
          headline1: GoogleFonts.nunito(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          headline2: GoogleFonts.nunito(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/1027/300'),
                  ),
                  title: Text(
                    'Hamza Tariq',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.whatshot,
                    size: 45,
                    color: theme.accentColor,
                  ),
                ),
                SizedBox(height: 36),
                TabBar(
                  unselectedLabelColor: Colors.black45,
                  unselectedLabelStyle: theme.textTheme.headline2,
                  labelColor: Colors.black87,
                  labelStyle: theme.textTheme.headline1,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      text: 'Stats',
                    ),
                    Tab(
                      text: 'Muscles',
                    ),
                  ],
                ),
                Container(
                  height: 600,
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          SizedBox(height: 36),
                          Text(
                            '60',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headline1
                                .copyWith(fontSize: 64),
                          ),
                          Text(
                            'Workouts Completed',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headline2.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      '69.5 kg',
                                      style: theme.textTheme.headline1
                                          .copyWith(fontSize: 32),
                                    ),
                                    Text(
                                      'Current weight',
                                      style: theme.textTheme.headline2
                                          .copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  width: 1,
                                  height: 40,
                                  color: Colors.black26,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        '6.5 kg',
                                        style:
                                            theme.textTheme.headline1.copyWith(
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 3,
                                              color: theme.accentColor,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              height: 3,
                                              color: Colors.black26,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Left to gain',
                                        style:
                                            theme.textTheme.headline2.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Row(
                            children: [
                              rowItemIconTextText(
                                theme: theme,
                                icon: Icons.bolt,
                                iconColor: Colors.orangeAccent,
                                color: Colors.orange[50],
                                title: '20.5 k cal',
                                subtitle: 'Burned',
                              ),
                              rowItemIconTextText(
                                theme: theme,
                                icon: Icons.fitness_center,
                                iconColor: Colors.deepPurple,
                                color: Colors.deepPurple[50],
                                title: '205 kg',
                                subtitle: 'Lifted',
                              ),
                              rowItemIconTextText(
                                theme: theme,
                                icon: Icons.fitness_center,
                                iconColor: Colors.blueAccent,
                                color: Colors.blue[50],
                                title: '13 weeks',
                                subtitle: 'Training',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 48,
                          ),
                          ListTile(
                            leading: Container(
                              width: 60,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.teal,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'AUG',
                                    style: theme.textTheme.headline2.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: theme.textTheme.headline1.copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            title: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.orangeAccent,
                                ),
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.deepPurple,
                                ),
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Recent: Shoulder and Back',
                                  style: theme.textTheme.headline1
                                      .copyWith(fontSize: 14),
                                ),
                                Text(
                                  '12 Exercises',
                                  style: theme.textTheme.headline2
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          ListTile(
                            leading: Container(
                              width: 60,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.brown,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'JUL',
                                    style: theme.textTheme.headline2.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '24',
                                    style: theme.textTheme.headline1.copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            title: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.orangeAccent,
                                ),
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.deepPurple,
                                ),
                                Container(
                                  margin: EdgeInsets.all(1),
                                  height: 3,
                                  width: 12,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Recent: Arms',
                                  style: theme.textTheme.headline1
                                      .copyWith(fontSize: 14),
                                ),
                                Text(
                                  '16 Exercises',
                                  style: theme.textTheme.headline2
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: theme.accentColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded rowItemIconTextText({
    ThemeData theme,
    IconData icon,
    Color color,
    String title,
    String subtitle,
    Color iconColor,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color,
            ),
            padding: EdgeInsets.all(12),
            child: Icon(
              icon,
              color: iconColor,
              size: 20,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: theme.textTheme.headline1.copyWith(fontSize: 18),
          ),
          Text(
            subtitle,
            style: theme.textTheme.headline2.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
