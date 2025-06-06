# sql-for-data-analysis
Executed some sql queries with the sample dataset

1. **Dataset Preparation**

   * A CSV file containing ecommerce shipping data was converted into a SQLite database (`ecommerce_shipping_data.db`).
   * The main table, `shipping_data`, includes columns like `Mode_of_Shipment`, `Cost_of_the_Product`, `Discount_offered`, and delivery status (`Reached.on.Time_Y.N`).

2. **SQL Query Development**

   * SQL queries were written to explore and analyze the data using `SELECT`, `GROUP BY`, `AVG()`, `COUNT()`, `CASE`, and `ORDER BY`.
   * A view named `shipping_summary` was created to aggregate key insights per shipment mode.

3. **Data Analysis Goals**

   * Identify the most used shipment modes.
   * Analyze average costs and discounts.
   * Evaluate delivery performance (on-time vs. delayed).
   * Understand discount trends by product importance.

4. **Visualizations**

   * Charts were generated using Python (matplotlib) to support findings:

     * Total Orders by Shipment Mode (Bar Chart)
     * Delivery Status Distribution (Pie Chart)
     * Average Discount by Product Importance (Bar Chart)

5. **Deliverables Provided**

   * SQLite database file
   * SQL script with all queries
   * PowerPoint presentation with findings and visuals
   * Instructions for converting PPT to PDF
