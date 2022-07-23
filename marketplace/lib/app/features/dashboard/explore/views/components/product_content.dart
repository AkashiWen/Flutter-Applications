part of explore;

class _ProductContent extends StatelessWidget {
  const _ProductContent({Key? key, required this.data}) : super(key: key);

  final List<Product> data;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return StaggeredGridTile.fit(
          crossAxisCellCount: 2,
          // child: Image(
          //   image: data[index].images[0],
          // ),
          child: ProductCard(
            data: ProductCardData(
              image: data[index].images[0],
              name: data[index].name,
              price: data[index].price,
              initialFavorite: data[index].isFavorite,
            ),
            onTap: () {
              // TODO
            },
          ),
        );
      },
    );
  }
}
