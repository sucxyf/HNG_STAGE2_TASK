class CVDetails {
  String fullName;
  String username;
  String githubHandle;
  String personalBio;

  CVDetails({
    required this.fullName,
    required this.username,
    required this.githubHandle,
    required this.personalBio,
  });

  void update(Map<String, String> updatedDetails) {
    fullName = updatedDetails['fullName'] ?? fullName;
    username = updatedDetails['username'] ?? username;
    githubHandle = updatedDetails['githubHandle'] ?? githubHandle;
    personalBio = updatedDetails['personalBio'] ?? personalBio;
  }
}
