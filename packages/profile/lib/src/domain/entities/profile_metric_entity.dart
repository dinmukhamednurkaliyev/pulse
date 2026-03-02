typedef UserRecord = ({String name, String address, String avatarUrl});

enum MetricType { weight, goal, calories }

class ProfileMetricEntity {
  const ProfileMetricEntity({
    required this.title,
    required this.value,
    required this.type,
  });
  final String title;
  final String value;
  final MetricType type;
}
