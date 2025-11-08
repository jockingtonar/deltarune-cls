local ExampleWave2, super = Class(Wave)

function ExampleWave2:init()
    super.init(self)

    -- The duration of our wave, in seconds. (Defaults to `5`)
    self.time = 5
end

function ExampleWave2:onStart()
    -- code here gets called at the start of the wave
    local ralsei_boss = self:getAttackers()[1]

    -- After three seconds have passed...
    self.timer:everyInstant(1, function()
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

function ExampleWave2:update()
    -- code here gets called every frame

    super.update(self)
end

return ExampleWave2