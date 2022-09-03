# discord Webhook Library
A small library to make it easier to send messages via discords webhooks.

Example Program:
```lua
local discordWebhook = require("discord-webhook")
discordWebhook:init("https://discord.com/api/webhooks/...")
discordWebhook:send("exampleName", "exampleMessage")
```

`send` also takes an URL as a third parameter to set the avatar for the message.