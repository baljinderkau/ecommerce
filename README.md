
## Introduction

Ruby on Rails 7.1 project, designed to be e-commerce.

To use this project, initially connect the server with rails. But first, you need to use the following commands: 
Commands:

1- - 'sudo systemctl start postgresql' # for postgresql db init
2 - 'rails db:drop, db:create and db:migrate, or rails db:setup'

Focus on the back-end, authentication is done in Devise, with an integer in roles, in this case the default: 0 is the User, and 1 is Admin.

## Main Project Settings

- [✓] - A nav-bar with all the actions that an e-commerce has (or almost all), including: links_to with create Product, remove cart, see the current cart, go to the home screen, etc.
- [✓] - Products in floating-box on the home screen (root_path)
- [✓] - Use Bootstrap 5, some icons, and use CSS to customize the front a little so it doesn't look like a pigsty, lol.
- [✓] - Make sure that only those who are going to make a cart, and go to checkout_confirmation, will only be LOGED users, if not, they will be required to register/log in with the DEVISE system.
- [✓] - In-app protections to prevent SQL injections, using ActiveRecord.
- [✓] - Associations configured to avoid future problems
- [✓] - Project writing to be as compressed as possible at the end of the project, for maintenance/scaling purposes using Docker
- [✓] - User Order History
- [✓] - Implement management of Products, carts and orders created by users.
- [✓] - Use Role 1 (Administrator) created in rails g devise User, as a way of administering the entire site.
- [✓] - Addition of comments to the project, where only another user other than the member can comment.
- [✓] - ActionCable, ActionChannel & AJax on Cart
- [✓] - Wallet for each User
- [✓] - After the user buys a product, and the order is confirmed, the product owner will receive the product (product.price)

## Project Dependencies

- Bootstrap 5.x
- Bootstrap Icons
- JQuery
- Ruby - 3.2.2
- Rails - 7.1.2
- gem 'devise', 4.9
- gem 'faker'

## Routes

Signin :   http://127.0.0.1:3000/users/sign_in

Signup : http://127.0.0.1:3000/users/sign_up

Product : http://127.0.0.1:3000/products

Admin Board : http://127.0.0.1:3000/admin

Admin Log : http://127.0.0.1:3000/activity_logs

Activity Log : http://127.0.0.1:3000/activity_logs

Profile Edit : http://127.0.0.1:3000/users/edit

Admin charts : http://127.0.0.1:3000/admin/charts



Admin User Name : 1ea6b6ff43@example.com
Password : NyxxGRcLMbKyHL4T6Wz3

User : atif@gmail.com
Password : atif1234