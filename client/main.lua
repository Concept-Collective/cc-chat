function getTimestamp()
    local meridiem = 'AM'
    year , month , day , hour , minute , second = ''
    if GetGameName() == 'fivem' then
        year , month , day , hour , minute , second = GetLocalTime()
    elseif GetGameName() == 'redm' then
        year , month , day , hour , minute , second = GetPosixTime()
    end
    if hour >= 13 then
        hour = hour - 12
        meridiem = 'PM'
    end
    if hour == 12 then
        meridiem = 'PM'
    end
    if minute <= 9 then
        minute = '0' .. minute
    end
    timestamp = hour .. ':' .. minute .. ' ' .. meridiem
    return timestamp
end

exports('getTimestamp', getTimestamp)