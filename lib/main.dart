import 'package:flutter/material.dart';
import 'package:pracriches_2/core/db/data_base_helper.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHelper.instance.init();
  
  runApp(Container());

}

