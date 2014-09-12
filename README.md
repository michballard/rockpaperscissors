Rock Paper Scissors
===================

Code developed to replicate the game rock paper scissors. Developed during Makers Academy training (week 5 challenge)

Staging app:
http://immense-springs-8940.herokuapp.com/

Production app:
http://nameless-depths-7882.herokuapp.com/


New Relic
=========

New Relic allows the website owner to monitor applications that are in production environments with live traffic.  The response time gives the average response time of calls across the application - in my example the app server response time is 68 ms and the browser response is 0.419 s.  The metric for customer experience (Apdex score) shows how well the user is being served with a score towards 1 indicating that user’s request is falling within a reasonable time - in this case the app server score is 0.98 and the browser score is 1.0.  Other useful indicators for user performance are that it provides the web transactions (including associated app server time) and the error rates.  

![](https://github.com/michballard/rockpaperscissors/blob/master/images/new_relic_analytics.jpg)
