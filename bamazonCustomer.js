var inquirer = require("inquirer");
var bamazon = require("mysql");

var connection = bamazon.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "root",
    // Your Database name
    database: "bamazon"
});
   
connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    getInventory();
    setTimeout(purchase, 2000);
});

function getInventory(){
    connection.query("SELECT * FROM products", function(error,results,fields){
        if(error) throw error;
        for(var i = 0; i < results.length; i++) {
            console.log(results[i])
        }
    })
}

function purchase(){
    inquirer.prompt([
        {
            type:"input",
            name: "id",
            message:"What is the item_id of the product you would like to purchase?",
        },
        {
            type: "input",
            name: "idquantity",
            message:"How many would you like to purchase?"
        }
    ]).then(function(answer){
        // console.log(answer.product);
        connection.query("SELECT * FROM products WHERE item_id = ?", [answer.id], function (error, results, fields) {
            if (error) throw error;
            if(answer.idquantity <= results[0].stock_quantity) {
                
                var total = results[0].price * answer.idquantity;

                connection.query("UPDATE products SET stock_quantity = ? WHERE item_id = ?",[results[0].stock_quantity - answer.idquantity, answer.id],function (error, results, fields) {
                    if (error) throw error;
                    console.log("Your total cost is $" + total)
                    connection.end();
                });

            } else{
                console.log("Insufficient Inventory for Your Purchase.")
                connection.end(); 
            }
        });  
    })
}