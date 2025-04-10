
def message(msg, timer=5)
    p msg
    sleep(timer)
end

def clean_display
    if Gem.win_platform?
        system("cls")
    else 
        system("clear")
    end
end