function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:postInit(new_file)
  if new_file then
    Game.world:startCutscene("intro.opening")
  end
end