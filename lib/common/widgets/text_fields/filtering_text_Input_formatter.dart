import 'package:flutter/services.dart';

final filteringTextInputFormatter =
    FilteringTextInputFormatter.allow(RegExp(r"[а-яёА-ЯЁa-zA-Z-ӘІҢҒҮҰҚӨҺ-әіңғүұқөһ'-]"));