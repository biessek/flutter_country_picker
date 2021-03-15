import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'country.dart';
import 'package:diacritic/diacritic.dart';

export 'country.dart';

const _platform = const MethodChannel('biessek.rocks/flutter_country_picker');
Future<List<Country>> _fetchLocalizedCountryNames() async {
  List<Country> renamed = [];
  Map? result;
  try {
    var isoCodes = <String>[];
    Country.ALL.forEach((Country country) {
      isoCodes.add(country.isoCode);
    });
    result = await _platform.invokeMethod(
        'getCountryNames', <String, dynamic>{'isoCodes': isoCodes});
  } on PlatformException catch (e) {
    return Country.ALL;
  }

  for (var country in Country.ALL) {
    renamed.add(country.copyWith(name: result![country.isoCode]));
  }
  renamed.sort(
      (Country a, Country b) => removeDiacritics(a.name).compareTo(b.name));

  return renamed;
}

/// The country picker widget exposes an dialog to select a country from a
/// pre defined list, see [Country.ALL]
class CountryPicker extends StatelessWidget {
  const CountryPicker({
    Key? key,
    this.selectedCountry,
    required this.onChanged,
    this.dense = false,
    this.showFlag = true,
    this.showDialingCode = false,
    this.showName = true,
    this.showCurrency = false,
    this.showCurrencyISO = false,
    this.nameTextStyle,
    this.dialingCodeTextStyle,
    this.currencyTextStyle,
    this.currencyISOTextStyle,
  }) : super(key: key);

  final Country? selectedCountry;
  final ValueChanged<Country> onChanged;
  final bool dense;
  final bool showFlag;
  final bool showDialingCode;
  final bool showName;
  final bool showCurrency;
  final bool showCurrencyISO;
  final TextStyle? nameTextStyle;
  final TextStyle? dialingCodeTextStyle;
  final TextStyle? currencyTextStyle;
  final TextStyle? currencyISOTextStyle;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    Country? displayCountry = selectedCountry;

    if (displayCountry == null) {
      displayCountry =
          Country.findByIsoCode(Localizations.localeOf(context).countryCode);
    }

    return dense
        ? _renderDenseDisplay(context, displayCountry!)
        : _renderDefaultDisplay(context, displayCountry);
  }

  _renderDefaultDisplay(BuildContext context, Country? displayCountry) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (showFlag)
            Container(
                child: Image.asset(
              displayCountry!.asset,
              package: "flutter_country_picker",
              height: 32.0,
              fit: BoxFit.fitWidth,
            )),
          if (showName)
            Container(
                child: Text(
              " ${displayCountry!.name}",
              style: nameTextStyle,
            )),
          if (showDialingCode)
            Container(
                child: Text(
              " (+${displayCountry!.dialingCode})",
              style: dialingCodeTextStyle,
            )),
          if (showCurrency)
            Container(
                child: Text(
              " ${displayCountry!.currency}",
              style: currencyTextStyle,
            )),
          if (showCurrencyISO)
            Container(
                child: Text(
              " ${displayCountry!.currencyISO}",
              style: currencyISOTextStyle,
            )),
          Icon(Icons.arrow_drop_down,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade700
                  : Colors.white70),
        ],
      ),
      onTap: () {
        _selectCountry(context, displayCountry!);
      },
    );
  }

  _renderDenseDisplay(BuildContext context, Country displayCountry) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            displayCountry.asset,
            package: "flutter_country_picker",
            height: 24.0,
            fit: BoxFit.fitWidth,
          ),
          Icon(Icons.arrow_drop_down,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade700
                  : Colors.white70),
        ],
      ),
      onTap: () {
        _selectCountry(context, displayCountry);
      },
    );
  }

  Future<Null> _selectCountry(
      BuildContext context, Country defaultCountry) async {
    final Country? picked = await showCountryPicker(
      context: context,
      defaultCountry: defaultCountry,
    );

    if (picked != null && picked != selectedCountry) onChanged(picked);
  }
}

/// Display a [Dialog] with the country list to selection
/// you can pass and [defaultCountry], see [Country.findByIsoCode]
Future<Country?> showCountryPicker({
  required BuildContext context,
  required Country defaultCountry,
}) async {
  assert(Country.findByIsoCode(defaultCountry.isoCode) != null);

  return await showDialog<Country>(
    context: context,
    builder: (BuildContext context) => _CountryPickerDialog(
          defaultCountry: defaultCountry,
        ),
  );
}

class _CountryPickerDialog extends StatefulWidget {
  const _CountryPickerDialog({
    Key? key,
    Country? defaultCountry,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CountryPickerDialogState();
}

class _CountryPickerDialogState extends State<_CountryPickerDialog> {
  TextEditingController controller = new TextEditingController();
  String? filter;
  List<Country> countries=[];

  @override
  void initState() {
    super.initState();

    countries = Country.ALL;

    _fetchLocalizedCountryNames().then((renamed) {
      setState(() {
        countries = renamed;
      });
    });

    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Dialog(
        child: Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: MaterialLocalizations.of(context).searchFieldLabel,
                prefixIcon: Icon(Icons.search),
                suffixIcon: filter == null || filter == ""
                    ? Container(
                        height: 0.0,
                        width: 0.0,
                      )
                    : InkWell(
                        child: Icon(Icons.clear),
                        onTap: () {
                          controller.clear();
                        },
                      ),
              ),
              controller: controller,
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (BuildContext context, int index) {
                    Country country = countries[index];
                    if (filter == null ||
                        filter == "" ||
                        country.name
                            .toLowerCase()
                            .contains(filter!.toLowerCase()) ||
                        country.isoCode.contains(filter!)) {
                      return InkWell(
                        child: ListTile(
                          trailing: Text("+ ${country.dialingCode}"),
                          title: Row(
                            children: <Widget>[
                              Image.asset(
                                country.asset,
                                package: "flutter_country_picker",
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    country.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context, country);
                        },
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
