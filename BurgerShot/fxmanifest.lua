
fx_version 'cerulean'

games { 'gta5' };

lua54 'yes'

shared_script '@ox_lib/init.lua'

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/script.js',
    'web/styles.css',
    'web/img/*.png'
}

shared_script 'shared.lua'

client_scripts {
    'client/*.lua'
}

server_script {
    'server/*.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    'ox_target'
}