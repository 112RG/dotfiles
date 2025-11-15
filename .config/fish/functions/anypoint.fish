function chstop
    anypoint-cli-v4 runtime-mgr:cloudhub-application:stop $argv[1]
end

function chstart
    anypoint-cli-v4 runtime-mgr:cloudhub-application:start $argv[1]
end
