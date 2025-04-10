def message(msg, timer = 5, color = :default)
    clean_display
  
    puts colorize(msg, color)
    sleep(timer)
  
    clean_display
  end
  
  def success_message(msg, timer = 5)
    message(msg, timer, :green)
  end
  
  def warning_message(msg, timer = 5)
    message(msg, timer, :yellow)
  end
  
  def error_message(msg, timer = 5)
    message(msg, timer, :red)
  end
  
  def clean_display
    if Gem.win_platform?
      system("cls")
    else
      system("clear")
    end
  end
  
  def colorize(text, color)
    codes = {
      red: "\e[31m",
      green: "\e[32m",
      yellow: "\e[33m",
      default: "\e[0m"
    }
    "#{codes[color]}#{text}\e[0m"
  end
  