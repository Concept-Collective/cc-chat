---
title: Creating Messages
---
## Introduction

How to send messages with the custom template 

## Syntax

```lua
templateId = 'ccChat',
multiline =  false,
args = {
	color,
	icon,
	subtitle,
	timestamp,
	msg 
}
```
## Arguments

| Argument      | Data Type     | Explanation
| ------------- | ------------- | -------------------------------------------------------------------------------------- |
| `color`       | String        | Accent Color of the message; Accepts `HEX`, `RGB` & `HSL`.                             |
| `icon`        | String        | The icon on the message found at [FontAwesome](https://fontawesome.com/search?m=free). |
| `subtitle`    | String        | The string next to the icon.                                                           |
| `timestamp`   | String        | The string on the top right of the message.                                            |
| `msg`         | String        | The main message being sent.                                                           |

## Example

=== "lua"
	```lua
	-- Server
	TriggerClientEvent('chat:addMessage', -1 , {
		templateId =  'ccChat',
		multiline =  false,
		args = {
			'#e74c3c',
			'fa-solid fa-fire',
			'Lit',
			'',
			'This message is lit!'
		} 
	})
	```

## Example Result

![image](https://user-images.githubusercontent.com/24248108/164552800-a703373a-632e-4839-a98e-a0cdcdf1d077.png)

