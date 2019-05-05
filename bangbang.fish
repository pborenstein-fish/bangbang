function !!
#     commandline -r $history[1]
#     commandline -f 'execute'
        #   127 = no such command
    if test $status -eq 127
        echo "bangbang: won't redo bad command '$history[1]'"
    else
        echo $history[1]
        eval $history[1]
    end
        #   keep this out of history
        #   use $_  (= !!) in case we rename
    builtin history --delete --prefix "$_"
end
