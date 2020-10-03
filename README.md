https://www.paypal.me/maxime48
# Gmod-Discord-Function-Relay
Smart Relay System For Gmod | https://discord.gg/QzUX4WF

# Wtf is this ?

This is not an addon but code to integrate it in your own addon | A GMod Lib

# Functions to use :

Discord_Webhook_Lib (relay-server, pass, web-url, title, color, name, value);

---relay-server -> Web link to where the client puted api.php
   
---pass -> password defined by the client to secure is api.php | Set the pass in init.lua and api.php
   
---web-url -> The discord WebHook
   
---Title -> title of message
   
---color -> color of the embed message | decimal value | use https://www.spycolor.com/
   
---name -> Name of Message
   
---value -> Value Of the message
_______________________________________________________________________________________________________________________________
   
Discord_Runstring_Lib (code, name, pass);

---code -> lua code to run 
   
---name -> it's name
   
---pass -> password to secure the function | you need to set this in the config (init.lua)
