local svConfig = {}

-- Configuration
 svConfig.versionChecker = true -- Version Checker
 svConfig.supportChecker = true -- Support Checker (If you use exports, it is recommended that you leave this on)

-- Script
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    if GetCurrentResourceName() ~= 'cc-chat' and svConfig.supportChecker == true then
        print('^6[Warning]^0 For better support, it is recommended that "'..GetCurrentResourceName().. '" be renamed to "cc-chat"')
    end
    if svConfig.versionChecker == true then
        PerformHttpRequest('https://api.github.com/repos/Concept-Collective/cc-chat/releases/latest', function (err, data, headers)
            local data = json.decode(data)
            if data.tag_name ~= 'v'..GetResourceMetadata(GetCurrentResourceName(), 'version', 0) then
                print('\n^1================^0')
                print('^1CC Chat ('..GetCurrentResourceName()..') is outdated!^0')
                print('Current version: (^1v'..GetResourceMetadata(GetCurrentResourceName(), 'version', 0)..'^0)')
                print('Latest version: (^2'..data.tag_name..'^0) '..data.html_url)
                print('Release notes: '..data.body)
                print('^1================^0')
            end
        end, 'GET', '')
    end
end)
