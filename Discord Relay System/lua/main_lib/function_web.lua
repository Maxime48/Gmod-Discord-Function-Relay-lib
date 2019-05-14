function Discord_Webhook_Lib (relay-server, pass, web-url, title, color, name, value)
    if discord_webhook_lib.debug then
       print("Discord_Webhook_Lib Function Received")
    end
   HTTP({
            url = relay-server,
            method = "POST",
            type = "application/json",
            parameters = {
                pass = pass,
                webhook_url = web-url,
                json = util.TableToJSON({
                    embeds = {{
                        title = title,
                        color = color,
                        fields = {{
                            name = name,
                            value = value
                        }}
                    }}
                })
            }
        })
    if discord_webhook_lib.debug then
       print("Message sended to server")
    end
end
