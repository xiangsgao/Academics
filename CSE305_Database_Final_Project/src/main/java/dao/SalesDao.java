package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import model.RevenueItem;

public class SalesDao {

    private List<RevenueItem> getDummyRevenueItems()
    {
        List<RevenueItem> items = new ArrayList<RevenueItem>();

        /*Sample data begins*/
        for (int i = 0; i < 10; i++) {
            RevenueItem item = new RevenueItem();
            item.setDate(new Date());
            item.setNumShares(5);
            item.setAccountId("foo");
            item.setPricePerShare(50.0);
            item.setStockSymbol("AAPL");
            item.setAmount(150.0);
            items.add(item);
        }
        /*Sample data ends*/

        return items;
    }
    public List<RevenueItem> getSalesReport(String month, String year) {

        /*
         * The students code to fetch data from the database will be written here
         * Query to get sales report for a particular month and year
         */
        List<RevenueItem> items = new ArrayList<RevenueItem>();

        String query = String.format("select Transactions.DateTimes,Trade.AccountId, Trade.StockId, Orders.NumShare, Transactions.PricePerShare\n" +
                "from Transactions, Trade, Orders\n" +
                "where Orders.OrderId = Trade.OrderId and Transactions.TransactionId = Trade.TransactionId and MONTH(Transactions.DateTimes) = %s AND YEAR(Transactions.DateTimes) = %s;\n ",
                month,
                year
                );


        // Orders.DataTime = month, year
        MysqlConn.initalizeConnection();
        ResultSet re = MysqlConn.runSelectQuery(query);

        try {
            while (re.next()) {
                RevenueItem item = new RevenueItem();
                item.setDate(re.getDate("DateTimes"));
                item.setAccountId(re.getString("AccountId"));
                item.setStockSymbol(re.getString("StockId"));
                item.setNumShares(re.getInt("NumShare"));
                item.setPricePerShare(re.getFloat("PricePerShare"));
                item.setAmount(Math.round(re.getInt("NumShare") * re.getFloat("PricePerShare") * 100.0) / 100.0);
                items.add(item);

            }
        } catch (Exception e) {
            System.out.println("debug: Encounter this error: " + e.toString());
            e.printStackTrace();

        }
        return items;
    }



    public List<RevenueItem> getSummaryListing(String searchKeyword) {

        /*
         * The students code to fetch data from the database will be written here
         * Query to fetch details of summary listing of revenue generated by a particular stock,
         * stock type or customer must be implemented
         * Store the revenue generated by an item in the amount attribute
         */

        List<RevenueItem> items = new ArrayList<RevenueItem>();

        // if keyword is client ssn
        String query = String.format("select Transactions.DateTimes,Trade.AccountId, Trade.StockId, Orders.NumShare, Trade.StockId, Transactions.PricePerShare\n" +
                        "from Transactions, Orders, Clients, Accounts, Trade\n" +
                        "where Orders.OrderId = Trade.OrderId and Transactions.TransactionId = Trade.TransactionId and Clients.ClientId = Accounts.ClientId AND Accounts.AccountId = Trade.AccountId AND Clients.ClientId = %s; ",
                        searchKeyword
                );
        System.out.println(query);
        MysqlConn.initalizeConnection();
        ResultSet re = MysqlConn.runSelectQuery(query);
        this.getSummaryListingHelper(re, items);
        if(!items.isEmpty()) return items;

        // if keyword is stock symbol
        query = String.format("select Transactions.DateTimes,Trade.AccountId, Trade.StockId, Orders.NumShare, Trade.StockId, Transactions.PricePerShare\n" +
                        "from Transactions, Orders, Clients, Accounts, Trade\n" +
                        "where Orders.OrderId = Trade.OrderId and Transactions.TransactionID = Trade.TransactionId and Clients.ClientId = Accounts.ClientId AND Accounts.AccountId = Trade.AccountId AND Trade.StockId = \'%s\';\n ",
                searchKeyword
        );
        System.out.println(query);
        re = MysqlConn.runSelectQuery(query);
        this.getSummaryListingHelper(re, items);
        if(!items.isEmpty()) return items;

        // if search is stock type
        query = String.format("select Transactions.DateTimes,Trade.AccountId, Trade.StockId, Orders.NumShare, Trade.StockId, Transactions.PricePerShare\n" +
                        "from Transactions, Orders, Clients, Accounts, Trade, Stocks\n" +
                        "where Orders.OrderId = Trade.OrderId and Transactions.TransactionId = Trade.TransactionId and Clients.ClientId = Accounts.ClientId AND Accounts.AccountId = Trade.AccountId AND Trade.StockId = Stocks.StockSymbol AND Stocks.Type = \'%s\';\n ",
                searchKeyword
        );
        System.out.println(query);
        re = MysqlConn.runSelectQuery(query);
        this.getSummaryListingHelper(re, items);
        return items;
    }

    private List<RevenueItem> getSummaryListingHelper(ResultSet re,  List<RevenueItem> items){

            try {
                while (re.next()) {
                    RevenueItem item = new RevenueItem();
                    Date date = re.getDate("DateTimes");
                    item.setDate(date);
                    item.setAccountId(re.getString("AccountId"));
                    item.setStockSymbol(re.getString("StockId"));
                    item.setNumShares(re.getInt("NumShare"));
                    item.setPricePerShare(Math.round(re.getFloat("PricePerShare") * 100.0) / 100.0);
                    item.setAmount(Math.round(re.getInt("NumShare") * re.getFloat("PricePerShare") * 100.0) / 100.0);
                    items.add(item);
                }
            } catch (Exception e) {
                System.out.println("debug: Encounter this error: " + e.toString());
                e.printStackTrace();

            }
            return items;
    }
}