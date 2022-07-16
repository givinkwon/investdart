import 'dart:html';

import 'package:investdart/data/stock.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

getStockRecentData(stock, country,
    {as_joson = false, order = "ascending", interval = "Daily"}) async {
  String ramdomUser = Random().toString();
  String smlId = (1000000 + Random().nextInt(89999999)).toString();
  String symbol = "AAPL";

  Uri url =
      Uri.parse("https://www.investing.com/instruments/HistoricalDataAjax");

  var head = {
    "User-Agent": ramdomUser,
    "X-Requested-With": "XMLHttpRequest",
    "Accept": "text/html",
    "Accept-Encoding": "gzip, deflate",
    "Connection": "keep-alive",
  };

  var params = {
    "curr_id": symbol,
    "smlID": smlId,
    "header": head,
    "interval_sec": interval,
    "sort_col": "date",
    "sort_ord": "DESC",
    "action": "historical_data",
  };

  var response = await http.post(url, headers: head, body: params);
}

getStockHistoricalData(stock, country, fromDate, toDate,
    {as_joson = false, order = "ascending", interval = "Daily"}) async {
  String ramdomUser = Random().toString();
  String smlId = (1000000 + Random().nextInt(89999999)).toString();
  String symbol = "AAPL";

  Uri url =
      Uri.parse("https://www.investing.com/instruments/HistoricalDataAjax");

  var head = {
    "User-Agent": ramdomUser,
    "X-Requested-With": "XMLHttpRequest",
    "Accept": "text/html",
    "Accept-Encoding": "gzip, deflate",
    "Connection": "keep-alive",
  };

  var params = {
    "curr_id": symbol,
    "smlID": smlId,
    "header": head,
    "st_date": fromDate,
    "end_date": toDate,
    "interval_sec": interval.capitalize(),
    "sort_col": "date",
    "sort_ord": "DESC",
    "action": "historical_data",
  };

  var response = await http.post(url, headers: head, body: params);
}

getStockComanyProfile(stock, {country = "spain", language = "english"}) async {}
getStockInformation(stock, country, {as_json = false}) async {}
getStockOverview(country, {as_json = false, n_results = 100}) async {}
getStockFinancialSummary(stock, country,
    {summaryType = "income_statment", period = "annual"}) async {}
