import 'package:autobir/presentation/bookmarks/filter_chip_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookmarkCategories extends StatefulWidget {
  const BookmarkCategories({
    super.key,
  });

  @override
  State<BookmarkCategories> createState() => _BookmarkCategoriesState();
}

class _BookmarkCategoriesState extends State<BookmarkCategories> {
  final list = [
    'Все',
    'Чистка салона',
    'Вакуумная чистка',
  ];
  int active = 1; // Initially active index

  @override
  Widget build(BuildContext context) {
    return ChipList(
      list: list,
      toLabel: (item) => item,
      activeIndex: active,
      onChipTapped: (index) {
        setState(() {
          active = index;
        });
      },
    );
  }
}

class ChipList<T> extends StatelessWidget {
  final List<T> list;
  final String Function(T item) toLabel;
  final int activeIndex;
  final Function(int) onChipTapped;

  const ChipList({
    required this.list,
    required this.toLabel,
    required this.activeIndex,
    required this.onChipTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ListView.separated(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = list[index];
          final isActive = index == activeIndex;

          return FilterChip_(
            selected: isActive,
            label: toLabel(item),
            onSelected: (selected) {
              onChipTapped(index);
            },
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        separatorBuilder: (context, index) => 16.w.widthBox,
      ),
    );
  }
}
