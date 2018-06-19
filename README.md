# Bamazon
A node command line storefront with a MySQL backend

## Overview
bamazonCustomer.js takes orders from customers and depletes stock from the store's inventory.

## Instructions
![bamazon](https://user-images.githubusercontent.com/37166192/41580309-58a2d01e-734f-11e8-88c1-0524e57ccae3.gif)

1. bamazon.sql contains the schema used for the MySQL database. 

2. The products table has the following columns:

   * item_id 

   * product_name 

   * department_name

   * price 

   * stock_quantity 

3. The Node application called `bamazonCustomer.js` displays all of the items available for sale, then prompts the user with two messages.

   * What is the item_id of the product you would like to purchase?
   * How many would you like to purchase?

4. The application checks if there is sufficient inventory to fullfill the purchase.

5. If there is not sufficient inventory to fullfill the order, it will not go through, and the application displays the message:
    * Insufficient Inventory for Your Purchase.

5. However, if there is sufficient inventory to fullfill the order:  
   * the application updates the database inventory to reflect the changes.
   * the application displays the Total Price of the purchase. 