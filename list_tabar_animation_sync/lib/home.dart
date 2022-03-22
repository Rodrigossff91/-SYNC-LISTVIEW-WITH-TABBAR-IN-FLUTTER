import 'package:flutter/material.dart';
import 'package:list_tabar_animation_sync/bloc/rappi_bloc.dart';
import 'package:list_tabar_animation_sync/rappi_model/rappi_model.dart';

class RappiConcept extends StatefulWidget {
  const RappiConcept({Key? key}) : super(key: key);

  @override
  _RappiConceptState createState() => _RappiConceptState();
}

class _RappiConceptState extends State<RappiConcept>
    with SingleTickerProviderStateMixin {
  final bloc = RappiBloc();

  @override
  void initState() {
    bloc.init(this);
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedBuilder(
          animation: bloc,
          builder: (context, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.white,
                height: 80,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Homepage",
                        style: TextStyle(
                            color: Colors.cyan[900]!,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.green,
                        child: ClipOval(
                          child: Icon(
                            Icons.person,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 60,
                  child: TabBar(
                      onTap: (value) {
                        bloc.onCategorySelected(value);
                      },
                      controller: bloc.tabController,
                      indicatorWeight: 0.1,
                      isScrollable: true,
                      tabs: bloc.tabs
                          .map((e) => _RappiTabWidget(
                                tabCategory: e,
                              ))
                          .toList())),
              Expanded(
                  child: SizedBox(
                child: ListView.builder(
                    controller: bloc.scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: bloc.items.length,
                    itemBuilder: ((context, index) {
                      final item = bloc.items[index];
                      if (item.isCategory) {
                        return _HappiCategoryItem(category: item.category);
                      } else {
                        return _HappiProductItem(product: item.product);
                      }
                    })),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class _RappiTabWidget extends StatelessWidget {
  const _RappiTabWidget({Key? key, this.tabCategory}) : super(key: key);
  final RappiTabCategory? tabCategory;

  @override
  Widget build(BuildContext context) {
    final selected = tabCategory!.selected;
    return Opacity(
      opacity: selected ? 1 : 0.5,
      child: Card(
        elevation: selected ? 6 : 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            tabCategory!.category.name,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
      ),
    );
  }
}

class _HappiCategoryItem extends StatelessWidget {
  final RappiCategory? category;
  const _HappiCategoryItem({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        category!.name,
        style: TextStyle(
            color: Colors.cyan[900]!,
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _HappiProductItem extends StatelessWidget {
  final RappiProduct? product;
  const _HappiProductItem({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: productHeight,
        child: Card(
            shadowColor: Colors.black54,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Image.network(
                  product!.image,
                  height: 60,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product!.name,
                        style: TextStyle(
                            color: Colors.cyan[900]!,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          product!.description,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.cyan[900]!,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "R\$ ${product!.price}",
                        style: TextStyle(
                            color: Colors.cyan[900]!,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
