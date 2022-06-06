import 'package:final_gym/providers/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widget/SettingWidget.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26273B),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "images/Rectangle 11.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 20, bottom: 5),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('images/Oval 2.png'),
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(AppLocalizations.of(context)!.fake_name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          AppLocalizations.of(context)!.fake_country,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xCCFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.about_you, icons: 'images/IconUser.png'),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.email,
                      value: 'haiadf@gmail.com',
                      icons: 'images/IconEmail.png'),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.phone,
                      value: '+966 9200 07576',
                      icons: 'images/IconPhone.png'),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.password, icons: 'images/IconPass.png'),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.country,
                      value: AppLocalizations.of(context)!.fake_country,
                      icons: 'images/IconCountry.png'),
                  SizedBox(height: 15),
                  SettingWidget(
                    title: AppLocalizations.of(context)!.language,
                    value:AppLocalizations.of(context)!.language_value ,
                    icons: 'images/IconLanguage.png',
                    onTap: () {
                      Provider.of<LanguageProvider>(context,listen: false).changeLanguage();
                    },
                  ),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.notifications,
                      value: AppLocalizations.of(context)!.on,
                      icons: 'images/IconNotf.png'),
                  SizedBox(height: 20),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.privacy_policy, icons: 'images/IconPrivacy.png'),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.terms_of_use, icons: 'images/IconTerms.png'),
                  SizedBox(height: 25),
                  SettingWidget(
                      title: AppLocalizations.of(context)!.sign_out, icons: 'images/IconSignOut.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
