-- Made by holyjoey.

util.require_natives(1663599433)

local function request_model(hash)
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        util.yield()
    end
end

local function crashes(pid)
menu.divider(menu.player_root(pid), "Holy's Object Cancer")
local cancer_list = menu.list(menu.player_root(pid), "Cancer", {}, "", function() end)

menu.toggle_loop(cancer_list, "I liek balls", {}, "", function(toggled)
    spam_thread1 = util.create_thread(function()
        ball_hashes = {-617857480, -1072941776, 42399216}
        for i, hash in ipairs(ball_hashes) do
            local stupid_object;
            request_model(hash)
            local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
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
            local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
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
            local player_ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
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

end

players.on_join(crashes)
players.dispatch_on_join()
util.keep_running()
