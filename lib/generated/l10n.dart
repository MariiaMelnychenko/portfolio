// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Portfolio`
  String get portfolio {
    return Intl.message('Portfolio', name: 'portfolio', desc: '', args: []);
  }

  /// `Mariia Melnychenko`
  String get fullName {
    return Intl.message(
      'Mariia Melnychenko',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get flutterDeveloper {
    return Intl.message(
      'Flutter Developer',
      name: 'flutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `3+ years of experience`
  String get yearsOfExperience {
    return Intl.message(
      '3+ years of experience',
      name: 'yearsOfExperience',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message('Skills', name: 'skills', desc: '', args: []);
  }

  /// `Apps`
  String get apps {
    return Intl.message('Apps', name: 'apps', desc: '', args: []);
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Download Resume`
  String get downloadResume {
    return Intl.message(
      'Download Resume',
      name: 'downloadResume',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedIn {
    return Intl.message('LinkedIn', name: 'linkedIn', desc: '', args: []);
  }

  /// `GitHub`
  String get gitHub {
    return Intl.message('GitHub', name: 'gitHub', desc: '', args: []);
  }

  /// `Couldn't load data. Please try again.`
  String get loadError {
    return Intl.message(
      'Couldn\'t load data. Please try again.',
      name: 'loadError',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Nothing here yet`
  String get emptyList {
    return Intl.message(
      'Nothing here yet',
      name: 'emptyList',
      desc: '',
      args: [],
    );
  }

  /// `Tech stack`
  String get techStack {
    return Intl.message('Tech stack', name: 'techStack', desc: '', args: []);
  }

  /// `Screenshots`
  String get screenshots {
    return Intl.message('Screenshots', name: 'screenshots', desc: '', args: []);
  }

  /// `Links`
  String get links {
    return Intl.message('Links', name: 'links', desc: '', args: []);
  }

  /// `About Me`
  String get aboutMe {
    return Intl.message('About Me', name: 'aboutMe', desc: '', args: []);
  }

  /// `Middle Flutter Developer with 3.5+ years of commercial experience. I specialize in building scalable iOS and Android applications using Clean Architecture and BLoC. My expertise includes WebSockets, monetization (RevenueCat), AI integration, and E2E testing. I am passionate about delivering robust products that bring real business value.`
  String get bioSummary {
    return Intl.message(
      'Middle Flutter Developer with 3.5+ years of commercial experience. I specialize in building scalable iOS and Android applications using Clean Architecture and BLoC. My expertise includes WebSockets, monetization (RevenueCat), AI integration, and E2E testing. I am passionate about delivering robust products that bring real business value.',
      name: 'bioSummary',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message('Experience', name: 'experience', desc: '', args: []);
  }

  /// `3.5+ years of commercial experience`
  String get experienceTotal {
    return Intl.message(
      '3.5+ years of commercial experience',
      name: 'experienceTotal',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get job1Title {
    return Intl.message(
      'Flutter Developer',
      name: 'job1Title',
      desc: '',
      args: [],
    );
  }

  /// `MAXOPEN STUDIO (Mar 2025 - Present)`
  String get job1Company {
    return Intl.message(
      'MAXOPEN STUDIO (Mar 2025 - Present)',
      name: 'job1Company',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Developer`
  String get job2Title {
    return Intl.message(
      'Flutter Developer',
      name: 'job2Title',
      desc: '',
      args: [],
    );
  }

  /// `Coding House Studio (Apr 2023 - Feb 2025)`
  String get job2Company {
    return Intl.message(
      'Coding House Studio (Apr 2023 - Feb 2025)',
      name: 'job2Company',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message('Education', name: 'education', desc: '', args: []);
  }

  /// `BSc in Computer Science (Artificial Intelligence Systems)`
  String get eduDegree {
    return Intl.message(
      'BSc in Computer Science (Artificial Intelligence Systems)',
      name: 'eduDegree',
      desc: '',
      args: [],
    );
  }

  /// `Lviv Polytechnic National University (2022 - 2026)`
  String get eduUniversity {
    return Intl.message(
      'Lviv Polytechnic National University (2022 - 2026)',
      name: 'eduUniversity',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message('Languages', name: 'languages', desc: '', args: []);
  }

  /// `English — B2 (Upper-Intermediate)`
  String get langEnglish {
    return Intl.message(
      'English — B2 (Upper-Intermediate)',
      name: 'langEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Ukrainian — Native`
  String get langUkrainian {
    return Intl.message(
      'Ukrainian — Native',
      name: 'langUkrainian',
      desc: '',
      args: [],
    );
  }

  /// `Hobbies & Interests`
  String get interests {
    return Intl.message(
      'Hobbies & Interests',
      name: 'interests',
      desc: '',
      args: [],
    );
  }

  /// `Strength training & fitness`
  String get interestFitness {
    return Intl.message(
      'Strength training & fitness',
      name: 'interestFitness',
      desc: '',
      args: [],
    );
  }

  /// `GitHub`
  String get github {
    return Intl.message('GitHub', name: 'github', desc: '', args: []);
  }

  /// `CV`
  String get cv {
    return Intl.message('CV', name: 'cv', desc: '', args: []);
  }

  /// `LinkedIn`
  String get linkedin {
    return Intl.message('LinkedIn', name: 'linkedin', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
