--Coded By @dr0gh
do
local function run(msg, matches)
local bot_id = -- Id-Khod-bot
local fbotmain = msg.action.user.id
    if matches[1]:lower == 'bye' and is_admin(msg) or msg.action.type == "channel_invite" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
   --    chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbotmain) then
       channel_add_user("chat#id"..msg.to.id, 'user#id'..fbotmain, ok_cb, false)
	   channel_invite(channel, user, ok_cb, false)  
    end
end
return {
  patterns = {
    "^([Bb]ye)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
