/// Common extensions for [String]
extension StringExtension on String {
  /// Returns a new string with the first [length] characters of this string.
  String limit(int length) =>
      length < this.length ? substring(0, length) : this;
}

/// Extension on [DateTime] for formatting relative time.
extension RelativeTimeExtension on DateTime? {
  /// Converts the [DateTime] object into a human-readable relative time string.
  String formatRelativeTime() {
    if (this == null) return 'N/A';

    final dateTime = this!;
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (difference.inMilliseconds == 0) {
      // Current time
      return 'Now';
    }

    if (difference.isNegative) {
      // Past dates
      final daysAgo = -difference.inDays;
      if (daysAgo == 1) {
        return 'Yesterday';
      } else if (daysAgo < 7) {
        return '$daysAgo days ago';
      } else if (daysAgo < 30) {
        return '${(daysAgo / 7).ceil()} weeks ago';
      } else if (daysAgo < 365) {
        return '${(daysAgo / 30).ceil()} months ago';
      } else {
        return '${(daysAgo / 365).ceil()} years ago';
      }
    } else {
      // Future dates
      if (difference.inSeconds < 60) {
        return 'In ${difference.inSeconds} seconds';
      } else if (difference.inMinutes < 60) {
        return 'In ${difference.inMinutes} minutes';
      } else if (difference.inHours < 24) {
        return 'In ${difference.inHours} hours';
      } else if (difference.inDays == 1) {
        return 'Tomorrow';
      } else if (difference.inDays < 7) {
        return 'In ${difference.inDays} days';
      } else if (difference.inDays < 30) {
        return 'In ${(difference.inDays / 7).ceil()} weeks';
      } else if (difference.inDays < 365) {
        return 'In ${(difference.inDays / 30).ceil()} months';
      } else {
        return 'In ${(difference.inDays / 365).ceil()} years';
      }
    }
  }
}
