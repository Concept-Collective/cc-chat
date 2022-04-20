# Editing Using the message template
# Introduction
How to send messages with the custom theme 

# Syntax
```lua
TriggerClientEvent('chat:addMessage', -1 , { templateId =  'ccChat', multiline =  false, args = { color, icon, subtitle, timestamp, msg } })
```
# Arguments

 - **color:** Color of the left box
 - **icon:** The icon from Font Awesome
 - **subtitle:** The text next to the icon
 - **timestamp:** The text on the top right of the message
 - **msg:** The message you would like to send

# Example Functions
```lua
-- Lua Server Side
function sendChatMessage(color, icon, subtitle, timestamp, msg)
	TriggerClientEvent('chat:addMessage', -1 , { templateId =  'ccChat', multiline =  false, args = { color, icon, subtitle, timestamp, msg } })
end
```

```lua
-- Lua Client Side
function sendChatMessage(color, icon, subtitle, timestamp, msg)
	TriggerEvent('chat:addMessage', { templateId =  'ccChat', multiline =  false, args = { color, icon, subtitle, timestamp, msg } })
end
```
