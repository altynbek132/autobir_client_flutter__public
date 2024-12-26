import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/bookmarks/bookmarks_wm.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/car_wash_card.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';

class BookmarkToggleButton extends StatelessWidget {
  BookmarkToggleButton({super.key, required this.carWash, this.iconSize = 24});

  final CarWash carWash;
  final int iconSize;

  final bookmarkStore = locator<BookmarksWm>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final isBookmarked = bookmarkStore.isCarWashBookmarked(carWash.id);
        return InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () async {
            final isLoggedIn = await locator<KeyValueStorageService>().getAccessToken() != null;
            if (!isLoggedIn && context.mounted) {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Для доступа к избранным необходимо авторизоваться'),
                  action: SnackBarAction(
                    label: 'Войти',
                    onPressed: () {
                      context.router.push(SignInRoute());
                    },
                  ),
                ),
              );
            }

            if (bookmarkStore.isCarWashBookmarked(carWash.id) && context.mounted) {
              showDeleteBookmarkBottomSheet(context);
            } else {
              bookmarkStore.addBookmark(carWash: carWash);
            }
          },
          child: Ink(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.home.bookmark.svg(
                  height: iconSize.sp,
                  width: iconSize.sp,
                  colorFilter: isBookmarked ? null : const ColorFilter.mode(AppColors.colorFFE6E6E6, BlendMode.srcIn),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showDeleteBookmarkBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      constraints: BoxConstraints(maxHeight: 273.h),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return DeleteBookmarkBottomSheet(
          carWash: carWash,
          bookmarkStore: bookmarkStore,
        ).paddingDefault;
      },
    );
  }
}

class DeleteBookmarkBottomSheet extends StatefulWidget {
  const DeleteBookmarkBottomSheet({
    super.key,
    required this.carWash,
    required this.bookmarkStore,
  });

  final CarWash carWash;
  final BookmarksWm bookmarkStore;

  @override
  State<DeleteBookmarkBottomSheet> createState() => _DeleteBookmarkBottomSheetState();
}

class _DeleteBookmarkBottomSheetState extends State<DeleteBookmarkBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Удалить из избранных?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ).paddingSymmetric(vertical: 16.h),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.50,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Colors.black.withOpacity(0.10000000149011612),
              ),
            ),
          ),
        ).paddingOnly(bottom: 16.h),
        CarWashCardContent(
          showButton: false,
          carWash: widget.carWash,
        ).paddingOnly(bottom: 20.h),
        Row(
          children: [
            const TextButton_(
              text: 'Отмена',
              backgroundColor: AppColors.colorFFF6F6F6,
              color: AppColors.colorFF6D48FF,
            ).expanded(),
            9.w.widthBox,
            TextButton_(
              text: 'Да, удалить',
              isLoading: isLoading,
              onPressed: () async {
                /// set loading to true
                setState(() => isLoading = true);

                /// get bookmark by carWashId
                final bookmark =
                    widget.bookmarkStore.bookmarksList.firstWhereOrNull((e) => e.carWashId == widget.carWash.id);

                /// delete bookmark
                if (bookmark != null) await widget.bookmarkStore.deleteBookmark(bookmark: bookmark);
                setState(() => isLoading = false);
                if (context.mounted) Navigator.of(context).pop();
              },
            ).expanded(),
          ],
        ),
      ],
    );
  }
}
