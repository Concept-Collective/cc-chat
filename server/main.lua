ccChat = {}

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    --TODO CHECK FOR UPDATE
end)
  
