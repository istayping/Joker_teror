--coded By @dr0gh 
local function run(msg)
    if not is_momod(msg) then
        delete_msg(msg.id, ok_cb, true)
        return 
    end
end

return {patterns = {
    "!!tgservice (.+)"
    }, run = run}
