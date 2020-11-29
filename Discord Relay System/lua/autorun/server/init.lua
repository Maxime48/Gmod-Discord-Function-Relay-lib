print("Discord Relay LIB Launched")

discord_webhook_lib = {}

--CONFIG

discord_webhook_lib.debug = false

discord_webhook_lib.relay_pass = "api-relay"

discord_webhook_lib.yourstring_pass_activate = false

discord_webhook_lib.yourstring_pass = "thisisastrongpass"

--END OF CONFIG

discord_webhook_lib.ModuleList = {
    "main_lib/function_web.lua",
    "main_lib/function_runyourstring.lua"
}

local function ErrorModule(Error_Code)
    print("Checking the error")
    if code == 1 then
        print("Result : Setting not activated")
    end   
end


local function ModuleLoader()
  print("Module loader started")
    for k, v in pairs(discord_webhook_lib.ModuleList) do        
       if v == "main_lib/function_runyourstring.lua" then
          if discord_webhook_lib.yourstring_pass_activate then
            include(v)
             print("| Loading: "..v)
           else
             print("| Not Loading: "..v)
                 code = 1
                  ErrorModule(code);
          end
       else       
         include(v)
          print("| Loading: "..v)               
       end
    end
end

print("Loading")
  ModuleLoader();
print("Finished the integration")

