if discord_webhook_lib.yourstring_pass_activate then
 function Discord_Runstring_Lib (code, name, pass)
   if pass == discord_webhook_lib.yourstring_pass then
     if discord_webhook_lib.debug then
        print("discord_webhook_lib.yourstring_pass_activate Received")
     end      
     RunString(code, name)
     if discord_webhook_lib.debug then
        print(code.." | Executed By The Lib")
     end
   end
 end
end
