path_separator = "\\"
local configPath = os.getenv("HOME") .. path_separator .. '.config' .. path_separator .. 'oh-my-posh' .. path_separator .. 'thewickedd.omp.json'
print('oh-my-posh init cmd --config "' .. configPath .. '"')
load(io.popen('oh-my-posh init cmd --config "' .. configPath .. '"'):read("*a"))()