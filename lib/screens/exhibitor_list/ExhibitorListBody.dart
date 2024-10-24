import 'package:inter_dairy/data/remote/response/Status.dart';
import 'package:inter_dairy/model/ExListModel.dart';
import 'package:inter_dairy/screens/widgets/MyErrorWidget.dart';
import 'package:inter_dairy/screens/widgets/LoadingWidget.dart';
import 'package:inter_dairy/screens/widgets/TextTitle.dart';
import 'package:inter_dairy/utils/size_config.dart';
import 'package:inter_dairy/view_model/ExhibitorListVM.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExhibitorListBody extends StatefulWidget {
  @override
  State<ExhibitorListBody> createState() => _ExhibitorListBodyState();
}

class _ExhibitorListBodyState extends State<ExhibitorListBody> {
  final ExhibitorListVM exhibitorListVM = ExhibitorListVM();
  final ScrollController _scrollController = ScrollController();

  final TextEditingController _textController = TextEditingController();
  List<ExhibitorList> _filteredExhibitorList = [];

  @override
  void initState() {
    exhibitorListVM.fetchExhibitorList();
    exhibitorListVM.addListener(() {
      _filteredExhibitorList = exhibitorListVM.exListMain.data!.exhibitorList!;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/home-bg.png',
          fit: BoxFit.cover,
        )),
        ChangeNotifierProvider<ExhibitorListVM>.value(
          value: exhibitorListVM,
          child:
              Consumer<ExhibitorListVM>(builder: (context, exhibitorListVM, _) {
            switch (exhibitorListVM.exListMain.status) {
              case Status.LOADING:
                return LoadingWidget();
              case Status.ERROR:
                return MyErrorWidget(
                    exhibitorListVM.exListMain.message ?? "NA");
              case Status.COMPLETED:
                /*return _getExhibitorListView(
                    exhibitorListVM.exListMain.data!.exhibitorList!);*/
                return _getExhibitorListView(_filteredExhibitorList);
              default:
            }
            return Container();
          }),
        ),
      ],
    );
  }

  Widget _getExhibitorListView(List<ExhibitorList> exList) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: getProportionateScreenHeight(16)),
          const TextTitle(text: 'Exhibitor List'),
          SizedBox(height: getProportionateScreenHeight(16)),
          _buildSearchBarForFilterList(),
          SizedBox(height: getProportionateScreenHeight(16)),
          Expanded(
            child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _scrollController,
                itemCount: _filteredExhibitorList.length,
                itemBuilder: (context, position) {
                  return _getListItem(exList[position]);
                }),
          ),
        ],
      ),
    );
  }

  Card _getListItem(ExhibitorList exListModel) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Colors.white,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exListModel.company!,
              style: const TextStyle(
                  color: Color(0xff363273),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4.0),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Stall No : ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              exListModel.stall!,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              width: 70,
            ),
            const Text(
              'Hall No : ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              exListModel.hall!,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBarForFilterList() {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        maxLines: 1,
        controller: _textController,

        decoration: InputDecoration(

          prefixIcon: IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () => FocusScope.of(context).unfocus(),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                Icons.clear_rounded,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                _textController.text = "";
                _filterExhibitorListBySearchText("");
              }),
          hintText: 'Search...',
          floatingLabelAlignment: FloatingLabelAlignment.center,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        onChanged: (value) => _filterExhibitorListBySearchText(value),
        onSubmitted: (value) => _filterExhibitorListBySearchText(value),
      ),
    );
  }

  void _filterExhibitorListBySearchText(String searchText) {
    setState(() {
      _filteredExhibitorList = exhibitorListVM.exListMain.data!.exhibitorList!
          .where((element) =>
              element.company!
                  .toLowerCase()
                  .contains(searchText.toLowerCase()) ||
              element.stall!.toLowerCase().contains(searchText.toLowerCase()) ||
              element.hall!.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }
}
