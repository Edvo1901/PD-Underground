
------
-- InteractSound by Scott
-- Verstion: v0.0.1
------

-- Manifest Version
resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

-- Client Scripts
client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page('client/html/index.html')

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files({
    'client/html/index.html',
    "client/html/sounds/vocal_keypress.ogg",
    "client/html/sounds/vocal_response.ogg",
    "client/html/sounds/vocal_response2.ogg",
    "client/html/sounds/vocal_response3.ogg",
    "client/html/sounds/vocal_response4.ogg",
    "client/html/sounds/vocal_keyrelease.ogg",
    "client/html/sounds/vocal_turnon.ogg",
    "client/html/sounds/vocal_turnoff.ogg"
})