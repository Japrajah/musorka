key = 'keykeykeykey'

function WriteSignatures(targetSignature, overrideSignature, codePage)
  local byteLine = overrideSignature:gsub("%w+", "0x%0,"):sub(1,-2)
  local results = AOBScan(targetSignature, codePage)
  if (results == nil) then
showMessage('нет результатов')
return


 end
  for i = 0, results.Count-1 do
    local address = getAddress(results.getString(i))
    local lineCode = 'writeBytes('..address..','.. byteLine..')'
    loadstring(lineCode)()
  end
  results.destroy()
end


function knifedistanceon()
  local targetSignature   = '66 66 66 3F 00 00 C0 3F ?? 00 ?0 00 20'
  local overrideSignature = '00 C0 79 44 00 00 C0 3F 32 00 20 00 20 00 00 00 00 00 48 42 00 00 48 43 00 00 80 BF 00 00 48 42 00 00 00 00 00 00 00 3F 00 00 00 00 00 00 00 00'
  local codePage = '-X*C*W'
  WriteSignatures(targetSignature, overrideSignature, codePage)
end

function terroron()
  local targetSignature   = 'CD CC 4C 3F 00 00 C0 3F 64 00 20 00 20 00 00 00 00 00 48 42 00 00 48 43 00 00 80 BF 00 00 48 42 00 00 00 00 00 00 00 3F 00 00 00 3F 00 00 00 00 00 00 00 00 00 00 80'
  local overrideSignature = '00 C0 79 44 00 00 C0 3F 64 00 20 00 20 00 00 00 00 00 48 42 00 00 48 43 00 00 80 BF 00 00 48 42 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 80'
  local codePage = '-X*C*W'
  WriteSignatures(targetSignature, overrideSignature, codePage)
end
function disabletuman()
  local targetSignature   = '?? ?? ?? ?? 00 00 80 3F ?? ?? ?? ?? B2 2D D5 43'
  local overrideSignature = '00 00 00 00 00 00 80 3F ?? ?? ?? ?? B2 2D D5 43'
  local codePage = '-X*C*W'
  WriteSignatures(targetSignature, overrideSignature, codePage)
end


function UDF1_CEButton1Click(sender)
if password = key then
openProcess("Deceit.exe")
beep()
sleep(1000)
terroron()
knifedistanceon()
else
showMessage('wrong')
end


end

function UDF1_FormClose(sender)
--shellExecute('https://www.youtube.com/c/SedoyStreamer')
UDF1.Visible=false
--showMessage('закрыть')
--closeCE()
return caHide --Possible options: caHide, caFree, caMinimize, caNone
end

CETrainer.SEPERATOR.Visible=false

getAutoAttachList().add("Deceit.exe")
gPlaySoundOnAction=false
CETrainer.show()


function UDF1_KeyEnter(sender)
CEEdit1 = component_findComponentByName(CETrainer,"CEEdit")
password = CEEdit1.Text
end
