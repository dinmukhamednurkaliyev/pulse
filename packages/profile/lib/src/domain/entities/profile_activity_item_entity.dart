enum ActivityType { physical, statistics, routes, equipment, achievements }

class ProfileActivityItemEntity {
  const ProfileActivityItemEntity({
    required this.title,
    required this.subtitle,
    required this.type,
  });
  final String title;
  final String subtitle;
  final ActivityType type;
}
