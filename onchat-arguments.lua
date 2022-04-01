-- Formats table of arguments by splitting the chat message at spaces
function onChat(message, author)
  --print(message, author)
  local args = {}
  for i in string.gmatch(message, "%S+") do
    table.insert(args, i)
  end

  -- Find match anywhere in the message
  for a, arg in pairs(args) do
    if arg == "anywhere" then
      print("argument found anywhere in the command")
    end
  end

  -- Match only first argument in message
  if args[1] == "first" then
    print("argument found as the first entry in the command")
  end
end
