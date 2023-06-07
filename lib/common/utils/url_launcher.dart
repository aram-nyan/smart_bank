import 'package:smart_bank/common/constants/logger.dart';
import 'package:url_launcher/url_launcher.dart';

void urlLaunch(String url) async => await canLaunchUrl(Uri.parse(url))
    ? await launchUrl(Uri.parse(url))
    : appLogger.e("Error in urlLaunch | can't launch $url}");
