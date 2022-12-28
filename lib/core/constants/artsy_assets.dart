class ArtsyAssets {
  static const String _baseSvg = "assets/svg/";

  static String _getSvgPath(String pathName) {
    pathName = "$pathName.svg";
    return _baseSvg + pathName;
  }

  static const String _baseImage = "assets/images/";

  static String getImagePath(String pathName) {
    pathName = "$pathName.png";
    return _baseImage + pathName;
  }

  /// SVGs
  /// These are string variables that hold the paths of the different Svg assets in the project.
  /// They can be called by declaring SvgPicture.asset(AfmImages.stringName) eg SvgPicture.asset(AfmImages.add)

  /// 'Create' Icons
  static String addCircleSvg = _getSvgPath('add_circle');
  static String addSvg = _getSvgPath('add');

  /// Social Media Logos
  static String facebookSvg = _getSvgPath('facebook');
  static String googleSvg = _getSvgPath('google');
  static String instagramSvg = _getSvgPath('instagram');
  static String linkedInSvg = _getSvgPath('linkedin');

  /// Bottom Nav Bar Icons
  static String workOutlineSvg = _getSvgPath('work_outline');
  static String dashboardSvg = _getSvgPath('dashboard');
  static String personSvg = _getSvgPath('person');

  /// Password View Icons
  static String eyeSvg = _getSvgPath('eye');
  static String visibilityOffSvg = _getSvgPath('visibility_off');

  /// Afm Utility Icons
  static String moreHorizSvg = _getSvgPath('more_horiz');
  static String appleSvg = _getSvgPath('apple');
  static String arrowLeftSvg = _getSvgPath('arrow_left');
  static String attachFileSvg = _getSvgPath('attach_file');
  static String calendarSvg = _getSvgPath('calendar');
  static String infoSvg = _getSvgPath('info');
  static String pencilEditSvg = _getSvgPath('pencil_edit');
  static String inputLabelSvg = _getSvgPath('input_label');
  static String phoneSvg = _getSvgPath('phone');
  static String searchSvg = _getSvgPath('search');
  static String sendSvg = _getSvgPath('send');
  static String todaySvg = _getSvgPath('today');
  static String videocamSvg = _getSvgPath('videocam');
  static String viewHeadlineSvg = _getSvgPath('view_headline');
  static String zoomInSvg = _getSvgPath('zoom_in');
}
