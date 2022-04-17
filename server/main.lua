AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    PerformHttpRequest('https://api.github.com/repos/Concept-Collective/cc-chat/releases/latest', function (err, data, headers)
        local data = json.decode(data)
        if data.tag_name ~= 'v'..GetResourceMetadata(GetCurrentResourceName(), 'version', 0)..'' then
            print('^1================^0')
            print('^1CC Chat ('..GetCurrentResourceName()..') is outdated!^0')
            print('Current version: (^1v'..GetResourceMetadata(GetCurrentResourceName(), 'version', 0)..'^0)')
            print('Latest version: (^2'..data.tag_name..'^0) '..data.html_url..'')
            print('^1================^0')
        end
    end, 'GET', '')
end)
