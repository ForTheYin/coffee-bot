# Coffee AI..?
Check out our client library! https://github.com/ForTheYin/coffee-client
## Inspiration
We're a group of engineers. We like coffee, that's practically a given. We also hate waking up. So, we decided to build something which would wake us up, make us coffee, and utilize some nifty technologies!

## Technologies
* Ruby on Rails
* Python
* C++
* Twilio API
* Bose SoundTouch API
* Qualcomm 410C Dragonboard
* Arduino Nano
* Mr. Coffee Advanced Brew
* A whole bunch of wires & servos :)

## What does our project do?
Our project enables a user to have a new type of alarm clock, one that provides much more utility than the traditional kind. The user can either use our web-app to configure their new alarm clock, or, they can simply send a few text messages from their phone to achieve the same goal! Our application supports full configuration via text message. After properly configuring their client devices, a user can simply set an alarm, and then never have to lift another finger. 15 minutes before their alarm is triggered, the backend will send a request to our custom built client prototyped with a Qualcomm 410C Dragonboard to trigger their coffee machine to make a pot of their desired brew of coffee (strong, or regular). When their alarm goes off, it will send a request via the Bose SoundTouch API to play music (any mp3 file!) on the user's Bose speaker, and will use the Twilio API to call their cell-phone, so they're sure to wake up! By the time they get out of bed, they'll have a fresh pot of coffee waiting for consumption, mmm... 
