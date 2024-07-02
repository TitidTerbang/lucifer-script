bot = getBot()
id = 4562 --item id
ready = true

dropworld = "RELKQ|ECER" --WORLD|ID CONTOH PEPEK|PERAPATPUKI

platworld = "STOFLOUR69|ECER" --WORLD|ID CONTOH PEPEK|PERAPATPUKI

function take()
    for _, obj in pairs(getObjects()) do
        if obj.id == id then
            local x = math.floor(obj.x/32)
            local y = math.floor(obj.y/32)
            bot:findPath(x, y)
            sleep(150)
            bot:collectByID(id)
            sleep(200)
            if bot:getInventory():findItem(id) >= 50 then
                break
            end
        else
            bot:leave()
            ready = false
        end
    end
end

function movedrop()
    sleep(200)
    bot:warp(dropworld)
    sleep(2000)
    vend()
end

function moveplat()
    bot:warp(platworld)
    sleep(2000)
end

function vend()
    for _, t in pairs(bot:getWorld():getTiles()) do
        if bot:getInventory():findItem(id) >= 20 then
            if t.fg == 20 then
                -- bot:findPath(t.x, t.y)
                sleep(500)
                bot.auto_collect = false
                bot:drop(id,200)
                sleep(250)
                if bot:getInventory():findItem(id) == 0 then
                    break
                end
            end
        end
    end
end

function jalan()
    if bot:getInventory():findItem(id) == 0 then
        moveplat()
    end
    take()
    movedrop()
end

while ready do
    jalan()
end

--fitur
-- 1. no item di world = leave ✔
-- 2. tes drop