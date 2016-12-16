# _Shoe Stores Application_

#### _A web application to save Shoe Stores and Brands. Exercise to practice a many to many database relationship though use of Active Record, Ruby, Sinatra; week four of Epicodus Ruby, independent project 12/16/2016_

#### By _**Tracie Weitzman**_

## Specifications

#### 1. Adds Shoe Stores and Saves them to a Database
* Input: Sandal Town
* Output: Show link for Sandal Town shoe store page

#### 2. Adds Brands and Saves them to a Database
* Input: Frye
* Output: Show link for Frye brand page

#### 3. Visit Shoe Store Page, add Brands sold at Shoe Store, view Brands sold at Store in a list, edit name, and delete Shoe Store

#### 4. Visit Brand Page, add Stores selling Brand, view Shoe Stores were Brand is sold in a list, edit name, and delete Brand

## Database Schema

![alt tag](https://github.com/weitzwoman/shoe_stores_ruby/blob/master/public/img/schema.png)

## Setup/Installation Requirements

_Works in any web browser. To run Shoe Stores Application, in command line run:_

```
$ git clone https://github.com/weitzwoman/shoe_stores_ruby
$ cd shoe_stores_ruby
$ postgres
$ bundle
$ rake db:create
$ bundle exec rake db:migrate
$ rake db:test:prepare
$ ruby app.rb
```

## Support and contact details

_Contact me on Github at [weitzwoman](https://github.com/weitzwoman)_

## Technologies Used

* _HTML_
* _CSS_
  * _Bootstrap_
* _Ruby_
  * _Sinatra_
* _ActiveRecord_


### License

Shoe Stores App is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Shoe Stores App is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with the Shoe Stores App. If not, see http://www.gnu.org/licenses/.

Copyright (c) 2016 **_Tracie Weitzman_**
