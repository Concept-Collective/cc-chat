---
title: Creating Suggestions
hide:
  - navigation
---

## Example

=== "lua"
	```lua
	-- Client
	Citizen.CreateThread(function()
		TriggerEvent('chat:addSuggestion', '/ooc', 'Out of character', {
			{ name="Message", help="The message you would like to send to the chat" }
		})

		TriggerEvent('chat:addSuggestion', '/ban', 'Ban command', {
			{ name="Player ID", help="The player ID to ban" },
			{ name="Reason", help="Reason for baning the player" }
		})

		TriggerEvent('chat:addSuggestion', '/twt', 'Twitter', {
			{ name="Message", help="The message you would like to send as a tweet" }
		})
	end)
	```

## More Information
 - A detailed explanation can be found on FiveM Docs [here](https://docs.fivem.net/docs/resources/chat/events/chat-addSuggestion/).
