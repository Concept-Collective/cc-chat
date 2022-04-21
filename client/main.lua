function getTimestamp()
    local meridiem = 'AM'
    local year , month , day , hour , minute , second = GetLocalTime()
    if hour >= 13 then
        hour = hour - 12
        meridiem = 'PM'
    end
    if minute <= 9 then
        minute = '0' .. minute
    end
    timestamp = hour .. ':' .. minute .. ' ' .. meridiem
    return timestamp
end

exports('getTimestamp', getTimestamp)