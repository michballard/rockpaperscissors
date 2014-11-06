| [Makers Academy](http://www.makersacademy.com) | Week 5 | Friday Challenge |
| ------ | ------ | ------ |

Rock Paper Scissors
===================
The aim of this challenge is to develop a website that replicates the game rock paper scissors. This was built using Sinatra and deployed with Heroku.  

<strong>Screenshots</strong> 
Signing up on the homepage:
![Screenshot 1](https://github.com/michballard/rockpaperscissors/blob/master/images/screenshot1.png)
Choosing an option:
![Screenshot 2](https://github.com/michballard/rockpaperscissors/blob/master/images/screenshot2.png)
Getting the game result:
![Screenshot 3](https://github.com/michballard/rockpaperscissors/blob/master/images/screenshot3.png)


How to view it
--------------
Staging app:
http://immense-springs-8940.herokuapp.com/

Production app:
http://nameless-depths-7882.herokuapp.com/

How to run it
-------------
Clone the repository:
```shell
$ git clone git@github.com:michballard/rockpaperscissors.git
```

Change directory:
```shell
$ cd rockpaperscissors
```

Install gems:
```shell
$ bundle install
```

To run on local browser: 
```shell
$ rackup
```

View on browser at:
```
http://localhost:9292/
```

How to test it
--------------
Unit testing:
```shell
$ rspec
```

Integration testing:
```shell
$ cucumber
```

Technologies used
-----------------
- Ruby
- Rspec
- Sinatra
- HTML/CSS
- Capybara
- Cucumber
- Launchy
- Shotgun
- Heroku
- New Relic

New Relic analysis
------------------
New Relic allows the website owner to monitor applications that are in production environments with live traffic.  The response time gives the average response time of calls across the application - in my example the app server response time is 68 ms and the browser response is 0.419 s.  The metric for customer experience (Apdex score) shows how well the user is being served with a score towards 1 indicating that user’s request is falling within a reasonable time - in this case the app server score is 0.98 and the browser score is 1.0.  Other useful indicators for user performance are that it provides the web transactions (including associated app server time) and the error rates.  

![New Relic Snapshot](https://github.com/michballard/rockpaperscissors/blob/master/images/new_relic_analytics.jpg)
