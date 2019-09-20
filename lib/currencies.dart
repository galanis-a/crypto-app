import 'package:flutter/material.dart';

enum Currencies { USD, EUR }

final currenciesData = {
  Currencies.USD: {
    'sym': 'USD',
    'name': 'US Dollars',
    'icon': Icons.attach_money,
  },
  Currencies.EUR: {
    'sym': 'EUR',
    'name': 'Euros',
    'icon': Icons.euro_symbol,
  }
};
