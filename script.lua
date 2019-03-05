function onLoad()

  factionBorder = getObjectFromGUID('0026c9')
  factionZone = getObjectFromGUID('81308b')
  dialBack = getObjectFromGUID('773640')
  dialButton = getObjectFromGUID('0a0d89')
  dialSpinner = getObjectFromGUID('82cec8')
  objective = getObjectFromGUID('c370d3')
  combatCard = getObjectFromGUID('b759e1')
  worker = getObjectFromGUID('3a4392')
  mech = getObjectFromGUID('391402')
  character = getObjectFromGUID('d885e3')
  airship = getObjectFromGUID('205491')
  factionCard = getObjectFromGUID('aac02e')
  factionMat = getObjectFromGUID('8c9738')
  zeroCard = getObjectFromGUID('b4f0d5')
  actionToken = getObjectFromGUID('b7c660')
  powerToken = getObjectFromGUID('8a082c')
  popularityToken = getObjectFromGUID('b6b031')
  starToken = getObjectFromGUID('1278ba')
  technologyCube = getObjectFromGUID('5801e3')
  recruitToken = getObjectFromGUID('ee7ad9')
  armory = getObjectFromGUID('b76c07')
  mine = getObjectFromGUID('52892a')
  mill = getObjectFromGUID('5cf4fd')
  monument = getObjectFromGUID('14c0e5')
  industrialMat = getObjectFromGUID('57f042')
  engineeringMat = getObjectFromGUID('93c495')
  militantMat = getObjectFromGUID('b7d056')
  patrioticMat = getObjectFromGUID('fa3ab2')
  innovativeMat = getObjectFromGUID('8007e1')
  mechanicalMat = getObjectFromGUID('14df32')
  agriculturalMat = getObjectFromGUID('8e9333')
  riverwalk = getObjectFromGUID('476b18')
  metalToken = getObjectFromGUID('393659')
  oilToken = getObjectFromGUID('0cf021')
  grainToken = getObjectFromGUID('0d97f2')
  woodToken = getObjectFromGUID('2f41c4')
  coinPile = getObjectFromGUID('2c1648')
  coinPot = getObjectFromGUID('d48256')
  coinSingle = getObjectFromGUID('f2c74d')
  automaInfo = getObjectFromGUID('8d405a')
  automaDeck = getObjectFromGUID('69f35a')
  automaTrack = getObjectFromGUID('b1a5d0')
  factionBorder.interactable = false
  dialBack.interactable = false
  dialButton.interactable = false
  dialSpinner.interactable = false

--Index List--
shown = 0
playerMat = 0
combatZone = 0
faction = "Brown"
name = "Саксония"
tint = worker.getColorTint()
textColor = "[6C5342]"
rotation = 0
pos = factionBorder.getPosition()
column1 = 0
column2 = 5.48
column3 = 11.11
column4 = 16.56

local setupButton = {
  ['click_function'] = 'setupButton',
  ['label'] = '',
  ['function_owner'] = self,
  ['position'] = {16.4, 0.5, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 2000,
  ['height'] = 2000,
  ['font_size'] = 1500}
self.createButton(setupButton)

local playerMatButton = {
  ['click_function'] = 'playerMatButton',
  ['label'] = '',
  ['function_owner'] = self,
  ['position'] = {16.5, 300, -3.5},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(playerMatButton)

local combatButton = {
  ['click_function'] = 'combatButton',
  ['label'] = '',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 2000,
  ['height'] = 2000,
  ['font_size'] = 1500}
self.createButton(combatButton)

local industrialButton = {
  ['click_function'] = 'industrialButton',
  ['label'] = 'Индустриальный',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(industrialButton)

local engineeringButton = {
  ['click_function'] = 'engineeringButton',
  ['label'] = 'Инженерный',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(engineeringButton)

local militantButton = {
  ['click_function'] = 'militantButton',
  ['label'] = 'Милитаризованный',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(militantButton)

local patrioticButton = {
  ['click_function'] = 'patrioticButton',
  ['label'] = 'Патриотический',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(patrioticButton)

local innovativeButton = {
  ['click_function'] = 'innovativeButton',
  ['label'] = 'Инновационный',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(innovativeButton)

local mechanicalButton = {
  ['click_function'] = 'mechanicalButton',
  ['label'] = 'Механический',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(mechanicalButton)

local agriculturalButton = {
  ['click_function'] = 'agriculturalButton',
  ['label'] = 'Агропромышленный',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(agriculturalButton)

local automaButton = {
  ['click_function'] = 'automaButton',
  ['label'] = 'Automa',
  ['function_owner'] = self,
  ['position'] = {16.4, 300, -8.7},
  ['rotation'] =  {0, 0, 0},
  ['width'] = 3850,
  ['height'] = 700,
  ['font_size'] = 400}
self.createButton(automaButton)

end

function wait(time)
local start = os.time()
repeat coroutine.yield(0) until os.time() > start - time
end

function setupButton(button, color)
if color == faction and shown == 0 then
  factionBorder.AssetBundle.playTriggerEffect(0)
  self.editButton({index=3, position={16.5, 0.5, -3.5}})--Industrial
  self.editButton({index=4, position={16.5, 0.5, -1.8}})--Engineering
  self.editButton({index=5, position={16.5, 0.5, -0.1}})--Militant
  self.editButton({index=6, position={16.5, 0.5, 1.6}})--Patriotic
  self.editButton({index=7, position={16.5, 0.5, 3.3}})--Innovative
  self.editButton({index=8, position={16.5, 0.5, 5}})--Mechanical
  self.editButton({index=9, position={16.5, 0.5, 6.7}})--Agricultural
  self.editButton({index=10, position={16.5, 0.5, 8.4}})--Automa
  shown = 1

elseif color == faction and shown == 1 then
  factionBorder.AssetBundle.playTriggerEffect(0)
  self.editButton({index=3, position={16.5, 300, -3.5}})
  self.editButton({index=4, position={16.5, 300, -3.5}})
  self.editButton({index=5, position={16.5, 300, -3.5}})
  self.editButton({index=6, position={16.5, 300, -3.5}})
  self.editButton({index=7, position={16.5, 300, -3.5}})
  self.editButton({index=8, position={16.5, 300, -3.5}})
  self.editButton({index=9, position={16.5, 300, -3.5}})
  self.editButton({index=10, position={16.5, 300, -3.5}})
  shown = 0

elseif color ~= faction then
  factionBorder.AssetBundle.playTriggerEffect(1)
  broadcastToColor("Вы не на подходящем месте за столом.", color, ({0.856, 0.1, 0.094}))
end
end

function industrialButton(button,color)
startLuaCoroutine(self, 'industrialFunction')
end

function engineeringButton(button,color)
startLuaCoroutine(self, 'engineeringFunction')
end

function militantButton(button,color)
startLuaCoroutine(self, 'militantFunction')
end

function patrioticButton(button,color)
startLuaCoroutine(self, 'patrioticFunction')
end

function innovativeButton(button,color)
startLuaCoroutine(self, 'innovativeFunction')
end

function mechanicalButton(button,color)
startLuaCoroutine(self, 'mechanicalFunction')
end

function agriculturalButton(button,color)
startLuaCoroutine(self, 'agriculturalFunction')
end

function automaButton(button,color)
startLuaCoroutine(self, 'automaFunction')
end

function hideButtons(button, color)
factionBorder.AssetBundle.playTriggerEffect(0)
self.editButton({index=3, position={16.5, 300, -3.5}})
self.editButton({index=4, position={16.5, 300, -3.5}})
self.editButton({index=5, position={16.5, 300, -3.5}})
self.editButton({index=6, position={16.5, 300, -3.5}})
self.editButton({index=7, position={16.5, 300, -3.5}})
self.editButton({index=8, position={16.5, 300, -3.5}})
self.editButton({index=9, position={16.5, 300, -3.5}})
self.editButton({index=10, position={16.5, 300, -3.5}})
end

function combatButton(button, color)
if color == faction and combatZone == 0 then
  factionBorder.AssetBundle.playTriggerEffect(0)
  factionZone.setPositionSmooth({7.00, 2.00, 51.50})
  combatZone = 1
elseif color == faction and combatZone == 1 then
  factionBorder.AssetBundle.playTriggerEffect(0)
  factionZone.setPositionSmooth({7.00, -3.00, 51.50})
  combatZone = 0
elseif color ~= faction then
  factionBorder.AssetBundle.playTriggerEffect(1)
  broadcastToColor("Вы не на подходящем месте за столом.", color, ({0.856, 0.1, 0.094}))
end
end

function industrialFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
industrialMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function engineeringFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
engineeringMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function militantFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
militantMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function patrioticFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
patrioticMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function innovativeFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
innovativeMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function mechanicalFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
mechanicalMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function agriculturalFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
agriculturalMatSetup() wait(0.1)
factionSetup() wait(0.1)
matSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function automaFunction()
hideButtons()
rotateItems() wait(0.1)
standardSetup() wait(0.1)
factionSetup() wait(0.1)
automaSetup() wait(0.1)
active()
if done == 1 then
  return(1)
end
end

function active()
factionBorder.setLuaScript("function onLoad()\nfactionBorder = getObjectFromGUID('0026c9')\nfactionZone = getObjectFromGUID('81308b')\ncombatZone = 1\nfaction = 'Brown'\nfactionZone.setPositionSmooth({7.00, 2.00, 51.50})\nlocal combatButton =\n{['click_function'] = 'combatButton',\n['label'] = '',\n['function_owner'] = self,\n['position'] = {16.4, 0.5, -8.7},\n['rotation'] =  {0, 0, 0},\n['width'] = 2000,\n['height'] = 2000,\n['font_size'] = 1500}\nself.createButton(combatButton)\nend\nfunction combatButton(button, color)\nif color == faction and combatZone == 0 then\nfactionBorder.AssetBundle.playTriggerEffect(0)\nfactionZone.setPositionSmooth({7.00, 2.00, 51.50})\ncombatZone = 1\nelseif color == faction and combatZone == 1 then\nfactionBorder.AssetBundle.playTriggerEffect(0)\nfactionZone.setPositionSmooth({7.00, -3.00, 51.50})\ncombatZone = 0\nelseif color ~= faction then\nfactionBorder.AssetBundle.playTriggerEffect(1)\nbroadcastToColor('Wrong player seat.', color, ({0.856, 0.1, 0.094}))\nend\nend")
end

function industrialMatSetup()
  industrialMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Industrial Mat
  popularityToken.clone({position={45.04, 1.95+3, 9.82},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column3
  bolster = pos.x + 9.01 - column1
  produce = pos.x + 9.95 - 0.14 - column2
  trade = pos.x + 9.37 - column4
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
end

function engineeringMatSetup()
  engineeringMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Engineering Mat
  popularityToken.clone({position={43.29, 1.95+3, 9.86},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column4
  bolster = pos.x + 9.01 - 0.03 - column3
  produce = pos.x + 9.95 - column1
  trade = pos.x + 9.37 - 0.08 - column2
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
end

function militantMatSetup()
  militantMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Militant Mat
  popularityToken.clone({position={43.29, 1.95+3, 7.94},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column2
  bolster = pos.x + 9.01 + 0.06 - column1
  produce = pos.x + 9.95 - column3
  trade = pos.x + 9.37 + 0.04 - column4
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
end

function patrioticMatSetup()
  patrioticMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Patriotic Mat
  popularityToken.clone({position={41.55, 1.95+3, 9.83},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column1
  bolster = pos.x + 9.01 - 0.11 - column2
  produce = pos.x + 9.95 - 0.12 - column4
  trade = pos.x + 9.37 - 0.08 - column3
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+5, pos.z+10.5}}).unlock()
end

function innovativeMatSetup()
  innovativeMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Innovative Mat
  popularityToken.clone({position={45.04, 1.95+3, 7.89},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column4
  bolster = pos.x + 9.01 + 0.04 - column3
  produce = pos.x + 9.95 - 0.06 - column2
  trade = pos.x + 9.37 + 0.08 - column1
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
end

function mechanicalMatSetup()
  mechanicalMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Mechanical Mat
  popularityToken.clone({position={46.76, 1.95+3, 7.90},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 + 0.04 - column3
  bolster = pos.x + 9.01 - 0.17 - column2
  produce = pos.x + 9.95 - 0.12 - column4
  trade = pos.x + 9.37 - column1
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+5, pos.z+10.5}}).unlock()
end

function agriculturalMatSetup()
  agriculturalMat.clone({position={pos.x, pos.y+2, pos.z+3}}).lock()--Agricultural Mat
  popularityToken.clone({position={43.35, 1.95+3, 5.86},snap_to_grid=true}).unlock()--Popularity Token
  move = pos.x + 9.21 - column1
  bolster = pos.x + 9.01 - 0.10 - column4
  produce = pos.x + 9.95 - column3
  trade = pos.x + 9.37 - 0.08 - column2
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+5.5, pos.z+10.5}}).unlock()
end

function automaSetup()
  automaInfo.clone({position={pos.x+9, pos.y+2, pos.z+3}}).lock()--Info Cards
  automaDeck.clone({position={pos.x+3, pos.y+2, pos.z+3}}).unlock()--Automa Cards
  automaTrack.clone({position={pos.x-9, pos.y+2, pos.z+3}}).lock()--Star Track Cards
  popularityToken.clone({position={45.05, 1.95+3, -6.34},snap_to_grid=true}).unlock()--Popularity Token
  coinSingle.clone({position={pos.x+17, pos.y+2.5, pos.z+10.5}}).unlock()--Coins
  coinSingle.clone({position={pos.x+17, pos.y+3, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+3.5, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4, pos.z+10.5}}).unlock()
  coinSingle.clone({position={pos.x+17, pos.y+4.5, pos.z+10.5}}).unlock()
  worker.clone({position={pos.x+1, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 1
  worker.clone({position={pos.x, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 2
  worker.clone({position={pos.x-1, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 3
  worker.clone({position={pos.x-2, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 4
  worker.clone({position={pos.x-3, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 5
  worker.clone({position={pos.x-4, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Worker 6
  technologyCube.clone({position={16.06, 1.97+3, 53.35},snap_to_grid=true}).unlock()--Cube Tracker
  done = 1
end

function rotateItems()
  worker.setRotation({0, rotation, 0}) --Begin New Rotation
  mech.setRotation({0, rotation+180, 0})
  character.setRotation({0, rotation-90, 0})
  factionCard.setRotation({0, rotation, 0})
  factionMat.setRotation({0, rotation+180, 0})
  zeroCard.setRotation({0, rotation, 0})
  actionToken.setRotation({0, rotation, 0})
  powerToken.setRotation({0, rotation-90, 0})
  popularityToken.setRotation({0, rotation, 0})
  starToken.setRotation({0, rotation, 0})
  technologyCube.setRotation({0, rotation, 0})
  recruitToken.setRotation({0, rotation, 0})
  armory.setRotation({0, rotation, 0})
  mine.setRotation({0, rotation, 0})
  mill.setRotation({0, rotation, 0})
  monument.setRotation({0, rotation, 0})
  industrialMat.setRotation({0, rotation, 0})
  engineeringMat.setRotation({0, rotation, 0})
  militantMat.setRotation({0, rotation, 0})
  patrioticMat.setRotation({0, rotation, 0})
  innovativeMat.setRotation({0, rotation, 0})
  mechanicalMat.setRotation({0, rotation, 0})
  agriculturalMat.setRotation({0, rotation, 0})
  riverwalk.setRotation({0, rotation, 0})
  metalToken.setRotation({0, rotation+90, 0})
  oilToken.setRotation({0, rotation+90, 0})
  grainToken.setRotation({0, rotation+90, 0})
  woodToken.setRotation({0, rotation+90, 0})
  coinPot.setRotation({0, rotation+90, 0})
  coinPile.setRotation({0, rotation, 0})
  coinSingle.setRotation({0, rotation, 0})
  automaInfo.setRotation({0, rotation, 0})
  automaDeck.setRotation({180, rotation+180, 0})
  automaTrack.setRotation({0, rotation, 0})
end

function standardSetup()
  actionToken.setColorTint(tint)
  powerToken.setColorTint(tint)
  popularityToken.setColorTint(tint)
  starToken.setColorTint(tint)
  technologyCube.setColorTint(tint)
  recruitToken.setColorTint(tint)
  armory.setColorTint(tint)
  mine.setColorTint(tint)
  mill.setColorTint(tint)
  monument.setColorTint(tint)

  actionToken.setDescription(textColor .. name .. ' Фишка Действия')
  powerToken.setName(textColor .. name)
  popularityToken.setName(textColor .. name)
  starToken.setDescription(textColor .. name)
  technologyCube.setName(textColor .. 'Куб Технологий')
  recruitToken.setName(textColor .. 'Рекрут')
  armory.setName(textColor .. 'Арсенал')
  mine.setName(textColor .. 'Шахта')
  mill.setName(textColor .. 'Мельница')
  monument.setName(textColor .. 'Мемориал')
  dialBack.setName(textColor .. 'Инструкция')
  dialSpinner.setName(textColor .. 'Круг Силы')
  self.editButton({index=0, label='', position={16.4, 300, -8.7}})
  self.editButton({index=1, label='', position={16.5, 300, -3.5}})
  self.editButton({index=2, label='', position={16.4, 0.5, -8.7}})
  factionBorder.AssetBundle.playTriggerEffect(0)

  riverwalk.clone({position={pos.x+15, pos.y+2, pos.z-5.5}}).lock()--Riverwalk
  metalToken.clone({position={pos.x-2.25, pos.y+2, pos.z-11}}).lock()--Metal
  oilToken.clone({position={pos.x-5, pos.y+2, pos.z-11}}).lock()--Oil
  grainToken.clone({position={pos.x-7.75, pos.y+2, pos.z-11}}).lock()--Grain
  woodToken.clone({position={pos.x-10.5, pos.y+2, pos.z-11}}).lock()--Wood
  coinPile.clone({position={pos.x+19.75, pos.y+2.2, pos.z+8}}).lock()--Coin Pile
  coinPot.clone({position={pos.x+19.75, pos.y+2, pos.z+8}}).lock()--Coin Pot
end
--{pos.x, pos.y, pos.z}
function factionSetup(button, color)
  worker.setName(textColor .. "Рабочий")
  character.setName(textColor .. "Гюнтер Фон Дуйсбург и Ночь")
  character.setDescription(textColor .. "Лидер Саксонское Империи")
  mech.setName(textColor .. "Мех")
  factionCard.setName(textColor .. "Добро пожаловать в Саксонскую Империю")
  airship.setName(textColor .. "Дирижабль")
  factionZone.setPositionSmooth({7.00, 2.00, 51.50})--Combat Zone
  combatZone = 1
  character.clone({position={25.75, 1.67+3, 21.46},snap_to_grid=true}).unlock()--Character
  worker.clone({position={21.50, 2.32+3, 14.00}}).unlock()--Worker 1
  worker.clone({position={17.25, 2.32+3, 21.75}}).unlock()--Worker 2
  factionMat.clone({position={pos.x-1.5, pos.y+2, pos.z-5.5}}).lock()--Faction Mat
  factionCard.clone({position={pos.x+15, pos.y+2, pos.z+3}}).lock()--Card
  airship.clone({position={29.76, 6.54+3, 17.61}}).unlock()

  dialBack.setPosition({7.38, 1.58, 51.26})--Combat Dial
  dialButton.setPosition({6.01, 1.70, 52.40})
  dialSpinner.setPosition({6.02, 1.70, 52.41})
  dialBack.interactable = true
  dialButton.interactable = true
  dialSpinner.interactable = true
  dialSpinner.unlock()
  objective.takeObject({position={7.00, 4.00, 61.00}, flip = true})
  objective.takeObject({position={7.00, 4.00, 61.00}, flip = true})
  combatCard.takeObject({position={23.50, 4.00, 63.50}, flip = true})
  combatCard.takeObject({position={23.50, 4.00, 63.50}, flip = true})
  combatCard.takeObject({position={23.50, 4.00, 63.50}, flip = true})
  combatCard.takeObject({position={23.50, 4.00, 63.50}, flip = true})

  zeroCard.clone({position={pos.x+5, pos.y+2, pos.z+10.5}}).unlock()--Zero Card
  actionToken.clone({position={pos.x+15, pos.y+3, pos.z+3},snap_to_grid=true}).unlock()--Action Token
  powerToken.clone({position={-12.28, 1.90+3, 31.08},snap_to_grid=true}).unlock()--Power Token

  mech.clone({position={pos.x-1.97, pos.y+3, pos.z-3.98},snap_to_grid=true}).unlock()--Mech 1
  mech.clone({position={pos.x-4.62, pos.y+3, pos.z-3.98},snap_to_grid=true}).unlock()--Mech 2
  mech.clone({position={pos.x-7.2, pos.y+3, pos.z-3.98},snap_to_grid=true}).unlock()--Mech 3
  mech.clone({position={pos.x-9.84, pos.y+3, pos.z-3.98},snap_to_grid=true}).unlock()--Mech 4

  starToken.clone({position={pos.x+5.32, pos.y+3, pos.z-6.11},snap_to_grid=true}).unlock()--Star 1
  starToken.clone({position={pos.x+5.32, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Star 2
  starToken.clone({position={pos.x+3.95, pos.y+3, pos.z-6.11},snap_to_grid=true}).unlock()--Star 3
  starToken.clone({position={pos.x+3.95, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Star 4
  starToken.clone({position={pos.x+2.59, pos.y+3, pos.z-6.11},snap_to_grid=true}).unlock()--Star 5
  starToken.clone({position={pos.x+2.59, pos.y+3, pos.z-7.47},snap_to_grid=true}).unlock()--Star 6

end

function matSetup(button, color)
  recruitToken.clone({position={produce-3.65, pos.y+3, pos.z+6.48},snap_to_grid=true}).unlock()--Recruit Token 1
  recruitToken.clone({position={bolster-2.84, pos.y+3, pos.z+6.48},snap_to_grid=true}).unlock()--Recruit Token 2
  recruitToken.clone({position={trade-3.19, pos.y+3, pos.z+6.48},snap_to_grid=true}).unlock()--Recruit Token 3
  recruitToken.clone({position={move-2.94, pos.y+3, pos.z+6.48},snap_to_grid=true}).unlock()--Recruit Token 4

  worker.clone({position={produce, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 1
  worker.clone({position={produce-0.75, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 2
  worker.clone({position={produce-1.5, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 3
  worker.clone({position={produce-2.25, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 4
  worker.clone({position={produce-3, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 5
  worker.clone({position={produce-3.75, pos.y+3, pos.z-0.52},snap_to_grid=true}).unlock()--Worker 6
  technologyCube.clone({position={produce-2.27, pos.y+3, pos.z+0.59},snap_to_grid=true}).unlock()--Production Cube
  mill.clone({position={produce-3.46, pos.y+3.5, pos.z+0.70},snap_to_grid=true}).unlock()--Mill

  technologyCube.clone({position={bolster-1.12, pos.y+3, pos.z+0.4},snap_to_grid=true}).unlock()--Bolster Cube
  technologyCube.clone({position={bolster-3.06, pos.y+3, pos.z+0.4},snap_to_grid=true}).unlock()--Card Cube
  monument.clone({position={bolster, pos.y+3.5, pos.z+1.65},snap_to_grid=true}).unlock()--Monument

  technologyCube.clone({position={trade-2.43, pos.y+3, pos.z+0.42},snap_to_grid=true}).unlock()--Popularity Cube
  armory.clone({position={trade, pos.y+3.5, pos.z+1.62},snap_to_grid=true}).unlock()--Armory

  technologyCube.clone({position={move-3.14, pos.y+3, pos.z-0.65},snap_to_grid=true}).unlock()--Move Cube
  technologyCube.clone({position={move-1.13, pos.y+3, pos.z-0.65},snap_to_grid=true}).unlock()--Coin Cube
  mine.clone({position={move, pos.y+3.5, pos.z+0.44},snap_to_grid=true}).unlock()--Mine
  done = 1
end
