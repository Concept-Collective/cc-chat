version '1.3.0'
author 'Concept Collective'
description 'A chat theme for FiveM'

lua54 'yes'

server_script 'server/main.lua'
client_script 'client/main.lua'

dependency 'chat'

file 'theme/style.css'

chat_theme 'ccChat' {
    styleSheet = 'theme/style.css',
    msgTemplates = {
        ccChat = '<div id="notification" class="noisy"><div id="color-box" style="background-color: {0} !important;" class="noisy"></div><div id="info"><div id="top-info"><div id="left-info"><h1 id="title"><i class="{1}"></i></h1><h2 id="sub-title">{2}</h2></div><h2 id="time">{3}</h2></div><div id="bottom-info"><br><p id="text">{4}</p></div></div>'
    }
}

exports {
    'getTimestamp'
}

game 'common'
fx_version 'adamant'
