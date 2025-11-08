local ExampleWave, super = Class(Wave)

function ExampleWave:init()
    super.init(self)

    -- The duration of our wave, in seconds. (Defaults to `5`)
    self.time = 5
end

function ExampleWave:onStart()
    -- code here gets called at the start of the wave
    local ralsei_boss = self:getAttackers()[1]

    -- create a bullet at the center of the ralsei_boss
    local x, y = ralsei_boss:getRelativePos(ralsei_boss.width/2, ralsei_boss.height/2)
    for i=1, 6 do
        local bullet = self:spawnBullet("bullets/example_bullet", x, y)
        bullet.physics.speed = 4
        local target_angle = Utils.angle(x, y, Game.battle.soul.x, Game.battle.soul.y)
        bullet.rotation = target_angle + math.rad(Utils.random(-20, 20))
        bullet.physics.match_rotation = true
    end

    -- After three seconds have passed...
    self.timer:after(3, function()
    -- Play a sound when our bullet fires
        Assets.playSound("grab")

        local x, y = ralsei_boss:getRelativePos(ralsei_boss.width/2, ralsei_boss.height/2)

        local bullet = self:spawnBullet("bullets/example_bullet", x, y)
    -- Make this bullet double the size of a regular bullet (Default scaling is 2x)
        bullet:setScale(4)
        bullet.physics.speed = 16
        bullet.rotation = Utils.angle(x, y, Game.battle.soul.x, Game.battle.soul.y)
        bullet.physics.match_rotation = true
    end)
end

function ExampleWave:update()
    -- code here gets called every frame

    super.update(self)
end

return ExampleWave