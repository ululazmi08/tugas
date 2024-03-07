class ListBottomNavBarModel {
  ListBottomNavBarModel({
    required this.label,
    required this.icon,
  });
  late final String label;
  late final String icon;

  ListBottomNavBarModel.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    icon = json['path'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['path'] = icon;
    return data;
  }
}
