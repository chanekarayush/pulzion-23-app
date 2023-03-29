class EndPoints {
  static String? sampleToken;
  static String? baseUrl;
  static String? appLatestStableVersion;
  static String? privacyPolicyURL;
  static String? websiteURL;
  static String? playStoreURL;

  static String events = '${baseUrl!}/events';
  static String user = '${baseUrl!}/user/me';
  static String login = '${baseUrl!}/user/signin';
  static String signup = '${baseUrl!}/user/signup';
  static String addFCMToken = '${baseUrl!}/fcm_token/';
  static String eventslots = '${baseUrl!}/user_events';
}
