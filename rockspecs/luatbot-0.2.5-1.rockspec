package = 'luatbot'
version = '0.2.5-1'

source = {
	url = 'git+https://github.com/ghesy/luatbot.git',
	tag = 'v' .. version:match('^(.-)-'),
}

description = {
	homepage = 'https://github.com/ghesy/luatbot',
	license = 'Unlicense',
}

dependencies = {
	'telegram-bot-lua',
	'penlight',
}

build = {
	type = 'builtin',
	modules = {
		['luatbot'] = 'src/main.lua',
		['luatbot.util'] = 'src/util.lua',
	}
}