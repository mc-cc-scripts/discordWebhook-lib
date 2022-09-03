local discordWebhook = {}

---@param webhook string
function discordWebhook:init (webhook)
    self.hook = webhook
end

---@param name string
---@param message string
---@param avatar string
---@return boolean | table
---@return string | nil
function discordWebhook:send (name, message, avatar)
    if not avatar then avatar = "" end
    if not message or not name then
        return false, "Missing parameter(s)"
    end

    local data = {
        username = name,
        avatar_url = avatar,
        content = message
    }

    local request = http.post(
        self.hook,
        textutils.serialiseJSON(data),
        {["Content-Type"] = "application/json"}
    )

    return request
end

return discordWebhook