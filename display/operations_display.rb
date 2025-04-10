
def message(msg, timer=5)
    clean_display()
    
    p msg
    sleep(timer)
    
    clean_display()
end

def clean_display
    if Gem.win_platform?
        system("cls")
    else 
        system("clear")
    end
end