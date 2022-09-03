local discordWebhook = require("discord-webhook")
discordWebhook:init("https://discord.com/api/webhooks/...")
discordWebhook:send("exampleName", "exampleMessage")