class ImageConstants {
  static String avatarUrl = 'https://i.pravatar.cc/150?img=';

  static String getAvatarUrl(int index) {
    return ImageConstants.avatarUrl + index.toString();
  }
}
