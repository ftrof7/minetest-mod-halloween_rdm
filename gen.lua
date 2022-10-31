local types = {"halloween_rdm:pumpkin_fire"}

local function place(pos, facedir, length)

    if facedir > 3 then
        facedir = 0
    end

    local tailvec = minetest.facedir_to_dir(facedir)
    local p = {x = pos.x, y = pos.y, z = pos.z}
    local num = math.random(#types)

    minetest.swap_node(p, {name = types[num], param2 = facedir})

    for i = 1, length do

        p.x = p.x + tailvec.x
        p.z = p.z + tailvec.z

        minetest.swap_node(p, {name = "nyancat:nyancat_rainbow", param2 = facedir})
    end
end

if minetest.settings:get_bool("pbj_pup_generate") ~= false then

    local function generate(minp, maxp, seed)

        local height_min = -31000
        local height_max = -32
        local chance = 1000

        if maxp.y < height_min or minp.y > height_max then
            return
        end

        local y_min = math.max(minp.y, height_min)
        local y_max = math.min(maxp.y, height_max)
        local pr = PseudoRandom(seed + 9324342)

        if pr:next(0, chance) == 0 then

            local x0 = pr:next(minp.x, maxp.x)
            local y0 = pr:next(minp.y, maxp.y)
            local z0 = pr:next(minp.z, maxp.z)
            local p0 = {x = x0, y = y0, z = z0}

            place(p0, pr:next(0, 3), pr:next(3, 15))
        end
    end

    minetest.register_on_generated(generate)

    default.generate_nyancats = generate --Legacy
end