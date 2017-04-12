# shopping_cart
## Summary
This is a small and basic shopping cart application. It is implemented by Ruby and ActiveRecord. The default databse is Sqlite3, which can be modified on `environment.rb`.

It has following functions:

* show all the products
* show the purchase history
* show the detailed information of the shopping cart
* add products to shopping cart
* remove products from shopping cart
* buy all the products in the shopping cart without causing the inventory be lower than 0

## How to use it(on your command line)

###Environment Setup
1.clone the file
	`git clone https://github.com/Eraince/shopping_cart.git`
2.install the gem(specified in Gemfile)
	`bundle install`
3.create the database and migrate
	`be rake db:create`
	`be rake db:migration`
4.seed the database(optional, you can check the `seeds.rb` file first)
	`be rake db:seed`

We can review the tasks that we have available by running `bundle exec rake -T`(specified in Rakefile); all of the tasks related to databse are provided.

###List products
```
$be rake ruby runner.rb products
```
View all the products with the detailed information. If you seed the database first, you should see a bunch of product.

###List histories
```
be rake ruby runner.rb history
```
View all the histories about purchase. You are supposed to buy something first, otherwise, the history record is empty.

###List shopping cart
```
be rake ruby runner.rb carts
```
View all the products with detailed information in your shopping cart. You are supposed to add something first, otherwise, the shopping cart would be empty.

###Add products to shopping cart
```
be rake ruby runner.rb add 3 3
```
Add the product with id=3 with the amount of 3. You can change the number based on your preference.
Also, it is not allowed to add the amount which is larger than the available inventory. This is to avoid the inventory go below 0.

###Remove products from shopping cart
```
be rake ruby runner.rb remove 2 3
```
Remove the products with the amount you provide. If it is bigger than the number in tha cart, the cart will remove the whole products directly.

###Buy products
```
be rake ruby runner.rb buy
```
It will check the available inventory first and buy all the products in your shopping cart.
Also, if buying succesfully, it will automatically update the inventory and history.


##Conclusion
Thanks for checking my small application. Feel free to contact me at: PeiyuWang2016@u.northwestern.edu whenever you have questions about it. I'm happy to accept any advice.

