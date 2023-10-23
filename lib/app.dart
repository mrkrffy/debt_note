import 'package:debt_note/application/config/routing/app_router.dart';
import 'package:debt_note/application/generated/l10n.dart';
import 'package:flutter/material.dart';

class DNApp extends StatelessWidget {
  const DNApp({
    super.key,
    required this.router,
  });

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => I18n.current.appName,
      routerConfig: router.config(),
    );
  }
}
