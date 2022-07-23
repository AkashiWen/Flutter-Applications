part of explore;

class _TabBarContent extends StatefulWidget {
  const _TabBarContent({Key? key, required this.tabs, required this.children})
      : super(key: key);

  final List<Text> tabs;
  final List<Widget> children;

  @override
  State<_TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<_TabBarContent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tabs.length, child: _getColum(context));
  }

  Column _getColum(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: TabBar(
            tabs: widget.tabs,
            indicator: DotIndicator(
              color: Theme.of(context).primaryColor,
              distanceFromCenter: kSpacing,
              radius: 2,
              paintingStyle: PaintingStyle.fill,
            ),
            unselectedLabelColor: kFontColorPallets[1],
            labelColor: Theme.of(context).primaryColor,
            isScrollable: true,
          ),
        ),
        Expanded(child: TabBarView(children: widget.children)),
      ],
    );
  }
}
