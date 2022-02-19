import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';

import './screens/Tasks_screen.dart';

// import './widgets/myData.dart';

// import './providers/data_provider.dart';

// import './models/Task.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final String value = ref.watch(helloProvider);

    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
