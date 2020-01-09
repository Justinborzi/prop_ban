include("ban_list.lua")

local DEBUG = false

function CheckProp(ply, model)

    for k, v in pairs(props) do
        if DEBUG == true then print(v) end
        if (model == v) then
            DarkRP.notify(ply, 1, 4, "This Prop is Blacklisted by the server!")
            return false
        end
    end
end

hook.Add("PlayerSpawnProp", "CheckProp", CheckProp)
