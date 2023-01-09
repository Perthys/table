local table = table.clone(table);

function table.merge(...)
    local NewTable = {};
    local Tables = {...}

    for Index, CurrentTable in ipairs(Tables) do
        table.move(CurrentTable, 1, #CurrentTable, #NewTable + 1, NewTable);
    end

    return NewTable
end

return table
