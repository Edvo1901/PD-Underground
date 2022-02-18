vocalresponse = {
	"vocal_response",
	"vocal_response2",
	"vocal_response3",
	"vocal_response4",
	"vocal_response5"
}

pressed = false
radioon = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 168) then
			if radioon == false then
				radioon = true
				TriggerEvent('InteractSound_CL:PlayOnOne','vocal_turnon', 0.2)
				local txd = "CHAR_CHAT_CALL" 

				SetNotificationTextEntry("STRING")
				AddTextComponentSubstringPlayerName("")
		
		
				local title = "Radio"
				local subtitle = "Toggled ~g~On"
				local iconType = 0
				local flash = false 
				SetNotificationMessage(txd, txd, flash, iconType, title, subtitle)
		
				-- Draw the notification
				local showInBrief = true
				local blink = false 
				DrawNotification(blink, showInBrief)
			else
				radioon = false
				TriggerEvent('InteractSound_CL:PlayOnOne','vocal_turnoff', 0.2)
				local txd = "CHAR_CHAT_CALL" 

				SetNotificationTextEntry("STRING")
				AddTextComponentSubstringPlayerName("")
		
		
				local title = "Radio"
				local subtitle = "Toggled ~r~Off"
				local iconType = 0
				local flash = false 
				SetNotificationMessage(txd, txd, flash, iconType, title, subtitle)
		
				-- Draw the notification
				local showInBrief = true
				local blink = false 
				DrawNotification(blink, showInBrief)
			end
		elseif IsControlJustPressed(1, 249) and pressed == false and radioon == true then
			TriggerEvent('InteractSound_CL:PlayOnOne','vocal_keypress', 0.3)
			pressed = true
		elseif IsControlJustReleased(1, 249) and pressed == true then
			TriggerEvent('InteractSound_CL:PlayOnOne','vocal_keyrelease', 0.3)
			Wait(1000)
			--TriggerEvent('InteractSound_CL:PlayOnOne',vocalresponse[math.random(#vocalresponse)], 0.5)
			pressed = false
		end
	end
end)