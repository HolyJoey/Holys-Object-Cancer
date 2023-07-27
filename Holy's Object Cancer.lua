-- Made by holyjoey.

util.require_natives(1663599433)

local function request_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
end

local function aids(pid)
menu.divider(menu.player_root(pid), "Holy's Object Cancer")
local cancer_list = menu.list(menu.player_root(pid), "Cancer", {}, "", function() end)

menu.toggle_loop(cancer_list, "I liek balls", {}, "", function(toggled)
    spam_thread1 = util.create_thread(function()
        ball_hashes = {-617857480, -1072941776, 42399216}
        for i, hash in ipairs(ball_hashes) do
            local stupid_object;
            request_model(hash)
            local pos = players.get_position(pid)
            pos.x = pos.x + math.random(1, 32);
            pos.y = pos.y + math.random(1, 32);
            pos.z = pos.z + math.random(1, 32);
            stupid_object = entities.create_object(hash, pos)
            if stupid_object then
                ENTITY.APPLY_FORCE_TO_ENTITY(stupid_object, 1, 0.0, 0.0, 1, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
            end
        end
    end)
end)

menu.toggle_loop(cancer_list, "We go bowlin", {}, "", function(toggled)
    spam_thread2 = util.create_thread(function()
        bowling_hashes = {1467552538, 1399999408}
        for i, hash in ipairs(bowling_hashes) do
            local stupid_object2;
            request_model(hash)
            local pos = players.get_position(pid)
            pos.x = pos.x + math.random(1, 32);
            pos.y = pos.y + math.random(1, 32);
            pos.z = pos.z + math.random(1, 32);
            stupid_object2 = entities.create_object(hash, pos)
            if stupid_object2 then
                ENTITY.APPLY_FORCE_TO_ENTITY(stupid_object2, 1, 0.0, 0.0, 1, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
            end
        end
    end)
end)

menu.toggle_loop(cancer_list, "Give sum neons", {}, "", function(toggled)
    spam_thread3 = util.create_thread(function()
        neon_hashes = {-356229220, 1093406934, -312449604, 347423549, -1194227617}
        for i, hash in ipairs(neon_hashes) do
            local stupid_object3;
            request_model(hash)
            local pos = players.get_position(pid)
            pos.x = pos.x + math.random(1, 32);
            pos.y = pos.y + math.random(1, 32);
            pos.z = pos.z + math.random(1, 32);
            stupid_object3 = entities.create_object(hash, pos)
            if stupid_object3 then
                ENTITY.APPLY_FORCE_TO_ENTITY(stupid_object3, 1, 0.0, 0.0, 1, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
            end
        end
    end)
end)


menu.toggle_loop(cancer_list, "Mexico Dump", {}, "", function(toggled)
    spam_thread5 = util.create_thread(function()
        mexico_hash = {447976993, 1655278098, 1968648045}
        for i, hash in ipairs(mexico_hash) do
            local stupid_object5;
            request_model(hash)
            local pos = players.get_position(pid)
            pos.x = pos.x + math.random(1, 32);
            pos.y = pos.y + math.random(1, 32);
            pos.z = pos.z + math.random(1, 32);
            stupid_object5 = entities.create_object(hash, pos)
            if stupid_object5 then
                ENTITY.APPLY_FORCE_TO_ENTITY(stupid_object5, 1, 0.0, 0.0, 1, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
            end
        end
    end)
end)

object = "ar_prop_ar_neon_gate4x_01a"
menu.text_input(cancer_list, "Custom object", { "kys" }, "", function(object2)
    object = object2
end)

-- Can use this for props, vehicles and entities
menu.toggle_loop(cancer_list, "Custom Fuckaroo", {}, "", function(toggled)
    spam_thread4 = util.create_thread(function()
        custom_hash = {util.joaat(object)}
        for i, hash in ipairs(custom_hash) do
            local stupid_object4;
            request_model(hash)
            local pos = players.get_position(pid)
            pos.x = pos.x + math.random(1, 32);
            pos.y = pos.y + math.random(1, 32);
            pos.z = pos.z + math.random(1, 32);
            stupid_object4 = entities.create_object(hash, pos)
            if stupid_object4 then
                ENTITY.APPLY_FORCE_TO_ENTITY(stupid_object4, 1, 0.0, 0.0, 1, 0.0, 0.0, 0.0, 0, 1, 1, 1, 0, 1)
            end
        end
    end)
end)

end

players.on_join(aids)
players.dispatch_on_join()
util.keep_running()
