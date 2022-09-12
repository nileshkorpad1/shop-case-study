# Computer Store E-commerce Webpage

## Requirements
- Have git installed
- Node version ^16.x and up
- Npm version ^5.x and up

## Sub Repositories
- Front End: **https://github.com/nileshkorpad1/eshop-react**
- Backed End: **https://github.com/nileshkorpad1/eshop-node**
## Deployments

 - Front End (Netlify) : https://super-marshmallow-d92002.netlify.app
 - Back End (Heroku): https://dotcomputershop.herokuapp.com
 - Mongo DB: https://cloud.mongodb.com
 
 ## Login Details
 #### Admin
 ```
    - username: admin
    - password: password
  ```
 #### User
```
   - username: johndoe
   - password: password
  ``` 

## 1. Clone Repo
 ### Together
```
$ git clone https://github.com/nileshkorpad1/shop-case-study
$ cd shop-case-study
```

### Front End
```
$ git clone https://github.com/nileshkorpad1/eshop-react
$ cd eshop-react
```

### Back End
```
$ git clone https://github.com/nileshkorpad1/eshop-node
$ cd eshop-node
```

## 2. Create an .env file in the root backend folder
- Duplicate the .env-template file and rename it to .env
- Get the MongoDb connection string from the MongoDb Atlas instance or an admin with access to the database and update the MONGO_DB_URI variable

## 3. (optional) Install Mongo Db atlas desktop client
  - Download the app from [MongoDb Compass](https://www.mongodb.com/try/download/compass) site
  - In the mongoDB Compass app, click on the "Connect to MongoDB Atlas" button and paste the link you got from your admin in the "Connection String" field

## 4. Setup
- Init backend and frontend servers by running `make init-servers`
  - this will initialize and create the node modules on for each server
- Start the backend server by running `make start-backend`
  - if you need to see the logs and more debug information about the backend server then run `make start-backend-dev` instead
- Start the frontend server by running `make start-frontend`
  - This will start the React frontend server and open a browser page on port 3000

# Page features for normal users
## 1. Login
  - Open the webpage on your browser(http://localhost:3000), click on the sign in icon and login with your credentials
  - For sample credentials you can login in with:
    - username: `user1`
    - password: `password`

## 2. Create Account
  - Open the webpage on your browser(http://localhost:3000) and click on the sign in icon, select the "Create Account" option and fill in the form


## 3. Add an item to cart
  - In the main page, scroll down to any of the products and click either the picture or the name of the product
  - This will take you to the product page where you can view the product details, add a review (if signed in) and add the product to the cart.

## 4. Checkout a product
  - After an item(or items) are in the cart, you can select the "Proceed to checkout" button
  - This will guide to the product order review, and ask you to update/add the shipping info and payment info

## 5. Edit Order
  - After the order info has been updated, you can review it and edit any of the information provided, including the product itself.
  - Clicking on the available product details will take to a page where you can edit the information you selected and guide back the Review order page

## 6. Place order and process payment
  - After the order has been reviewed and the payment info has been updated, you can click on the "Place Order" button which will save the order to your account and redirect you to the payment page, where you can again review all the product details before proceeding with the payment.
    - This webpage is using the Stripe payment api, so you will need to have a valid (but fake) credit card to make the payment.
    - To test the payment processing,  you can use the following credit card information:
      - For a declined payment with insufficient funds you can use this card number:
        - ```
          Card Number: 4000 0000 0000 9995
          ```

      - For a successful payment you can use this card number:
        - ```
          Card Number: 4242 4242 4242 4242
          ```

      - The expiration date can be any future date ( so anything grater than the month and year you are testing this at)
      - The CVC can be any 3 digits number
    - More information can be found at [Stripe documentation](https://stripe.com/docs/testing#cards)
  - After the payment was successfully processed, the order details will be updated and you can access this information by clicking the user icon on the Navbar and clicking "My Account"

## 7. Update Account Info
  - Once you are in your account page, you can change any of the information from your profile including your name, email, username, and password. When you see the confirmation message, this means your information is updated and if you sign in and out this changes will be persistent.
  - Make sure you don't forget the password because we don't have a way to reset it yet.

## 8. Filter products by main or subcategory.
  - Anywhere from the web app, you can access the available products categories by clicking on the "Products" dropdown on the Navbar.
  - Here you can click on any of the main or sub categories to only see those products.
  - Once in the collections page you can continue filtering items by their price, average reviews and brand

## 9. Search for a specific product or keyword.
  - Also from anywhere in the web app, you can access a global search to look for a specific product or keyword in case you want to be more specific about your search.
  - Once you get your results, you can continue filtering items by their price, main category, average reviews, and order them from high to low, low to high, or newest arrivals.
  - You can also select how many products you want to see for page in case the result is too big and you want to see more products or make it less products per page to have a better look at individual results.

## 10. Review a product
  - A product can only be reviewed by signed in users. If you are not signed in, there will be a message asking you to do so or to create an account if you don't have one, and will redirect you to the product you are trying to review after successfully login in.
  - To review a product, click on any product card (again its image or name), this will take you to the products page and at the bottom you can add a review and a comment about the product.
  - There is a limit on how many reviews a user can have per product and that limit is 3 for now. If you try to review a product more than 3 times a warning message will pop up letting you know you have exceeded the number of reviews allowed for that specific product.

## 11. Logout
  - To logout, you can click on the user icon on the Navbar from any page and click on "Logout"


# Web page features for admin users

## 1. Login as admin
  - To login as admin, is the same as login as a regular user, but you will be redirected to the admin page as long as you have the right credentials.
  - For sample credentials you can login in with:
    - username: `admin`
    - password: `password`
  - Regular users can not become admins, and access to the admin page is restricted to admins only. If a regular or non user tries to access the admin page, a message will be displayed letting them know they are not authorized to access this page.

## 2. Admin page
  - After you have signed in to the admin page, you can view all registered users, products and transactions.
  - Currently the admin can only edit, add, and delete products but in the future this might be extended to users and transactions

## 3. Edit existing product.
  - To edit an existing product, click the Product button on the Admin navbar, look for the product you with to edit, and click on the edit button.
  - This will let you modify any of the available data on this product and the change will be saved and instantly available on the product page.

## Adding a product
  - To add a new product, click the Product button on the Admin navbar, and click on the "Add Product" button.
  - This will bring a form where you can fill the products information and add this product to the database.
  - Currently the product image has to be a URL but in the future we can allow admins to upload local pictures instead

## Delete a product
  - To delete a product, click the Product button on the Admin navbar, look for the product you with to delete, and click on the delete button.
  - This will delete the product from the database and it will no longer be available in the main website.

## Logout
  - To logout, click on the red "Sign Out" button on the Admin navbar.
  - This will take you back to the website main page and delete the admin session

## TBD
- Test cases
- Paypal payment
