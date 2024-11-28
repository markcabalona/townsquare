enum Platforms {
  mobile,
  tablet,
  web;

  static Platforms fromWidth(double width) {
    if (width >= 1044) return Platforms.web;
    if (width >= 500) return Platforms.tablet;
    return Platforms.mobile;
  }
}
