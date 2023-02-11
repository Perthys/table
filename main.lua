local table = table.clone(table);
local Dump = loadstring(game:HttpGet('https://raw.githubusercontent.com/strawbberrys/LuaScripts/main/TableDumper.lua'))()

function table.merge(...)
    local NewTable = {};
    local Tables = {...}

    for Index, CurrentTable in ipairs(Tables) do
        table.move(CurrentTable, 1, #CurrentTable, #NewTable + 1, NewTable);
    end

    return NewTable
end

function table.dump(table)
    return Dump(table)
end

return table
