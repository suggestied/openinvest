import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';

typedef OnAvatarTap = void Function();

class UserAvatar extends StatelessWidget {
  final OnAvatarTap? onTap;
  final double? radius;
  final String? avatarUrl;
  final File? file;
  final double? iconSize;

  const UserAvatar({
    super.key,
    this.onTap,
    this.radius,
    this.avatarUrl,
    this.file,
    this.iconSize,
  });

  factory UserAvatar.fromFile({
    required File file,
    OnAvatarTap? onTap,
    double? radius,
    double? iconSize,
  }) =>
      UserAvatar(
        onTap: onTap,
        file: file,
        radius: radius,
        iconSize: iconSize,
      );

  factory UserAvatar.fromUrl({
    required String url,
    OnAvatarTap? onTap,
    double? radius,
    double? iconSize,
  }) =>
      UserAvatar(
        onTap: onTap,
        avatarUrl: url,
        radius: radius,
        iconSize: iconSize,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Opacity(
        opacity: avatarUrl == null ? 0.6 : 1,
        child: Builder(builder: (context) {
          switch ((hasFile, hasUrl)) {
            case (true, _):
              return CircleAvatar(
                radius: radius ?? 48,
                backgroundImage: FileImage(file!),
              );
            case (false, true):
              return CircleAvatar(
                radius: radius ?? 48,
                backgroundImage: NetworkImage(avatarUrl!),
              );
            case (_, _):
              return CircleAvatar(
                radius: radius ?? 48,
                backgroundColor:
                    Theme.of(context).colorScheme.onSurface.withOpacity(.15),
                child: Icon(
                  Icons.person,
                  size: iconSize ?? 24,
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(.3),
                ),
              );
          }
        }),
      ),
    );
  }

  bool get hasUrl => avatarUrl != null && avatarUrl!.isNotEmpty;

  bool get hasFile => file != null;
}
