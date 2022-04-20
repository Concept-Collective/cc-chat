# Editing Creating Chat Suggestions
# Example
```lua
-- Lua Server Side
Citizen.CreateThread(function()
	TriggerClientEvent('chat:addSuggestion', -1, '/ooc', 'Out of character', {
		{ name="Message", help="The message you would like to send to the chat" }
	})

	TriggerClientEvent('chat:addSuggestion', -1, '/ban', 'Ban command', {
		{ name="Player ID", help="The player ID to ban" },
		{ name="Reason", help="Reason for baning the player" }
	})

	TriggerClientEvent('chat:addSuggestion', -1, '/twt', 'Twitter command', {
		{ name="Message", help="The message you would like to send as a tweet" }
	})
end)
```

```lua
-- Lua Client Side
Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/ooc', 'Out of character', {
		{ name="Message", help="The message you would like to send to the chat" }
	})

	TriggerEvent('chat:addSuggestion', '/ban', 'Ban command', {
		{ name="Player ID", help="The player ID to ban" },
		{ name="Reason", help="Reason for baning the player" }
	})

	TriggerEvent('chat:addSuggestion', '/twt', 'Twitter command', {
		{ name="Message", help="The message you would like to send as a tweet" }
	})
end)
```

## [More Information](https://docs.fivem.net/docs/resources/chat/events/chat-addSuggestion/)