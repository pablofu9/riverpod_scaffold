enum Flavor {
  dev,
  pre,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Riverpod Scaffold-Dev';
      case Flavor.pre:
        return 'Riverpod Scaffold-Pre';
      case Flavor.prod:
        return 'Riverpod Scaffold';
    }
  }

}
