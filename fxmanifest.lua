fx_version 'cerulean'
game 'gta5'

description 'ls-radio saltychat'

client_script {
    'client/client.lua',
    'config.lua'
  }
  
  server_script {
    'server/server.lua',
    'config.lua'
  }
  
  ui_page('html/ui.html')
  
  files {
    'html/ui.html',
    'html/js/script.js',
    'html/css/style.css',
    'html/img/cursor.png',
    'html/img/radio.png'
  }