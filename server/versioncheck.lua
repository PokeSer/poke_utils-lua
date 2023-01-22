local function checkVersion(err, responseText, headers)
    local currentVersion = LoadResourceFile(GetCurrentResourceName(), 'version')
    if not currentVersion then return end
    local githubUrl = 'https://github.com/PokeSer/poke_utils-lua'

    if currentVersion ~= responseText and tonumber(currentVersion) < tonumber(responseText) then
        print(GetCurrentResourceName()..' is outdated.\nYour version: '..currentVersion..' | New version: '..responseText..'\nPlease update it from '..githubUrl)
    else
        print(GetCurrentResourceName()..' is up to date, have fun!')
    end
end

CreateThread(function()
    PerformHttpRequest('https://raw.githubusercontent.com/PokeSer/poke_utils-lua/master/version', checkVersion, 'GET')
end)