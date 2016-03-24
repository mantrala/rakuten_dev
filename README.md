## Introduction
---

* This repo consists of two applications, one is rails api app and the other
  one is using angular to make calls to the api.
* How to run rails api?
  ```
  rake db:fixtures:load
  bundle exec rails s
  ```
* Functional tests are done using mini test and they can run using the command
  ```
  rake test
  ```
* This will start the rails server at port 3000
* The angular app is located in angular_client folder. cd in to that folder run
  a simple http python server on a mac like this:
  ```
  python -m SimpleHTTPServer 9000
  ```
* Go to a browser and hit, [http://localhost:9000] (http://localhost:9000/)
