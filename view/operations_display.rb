def message(msg, color: :default)
    puts colorize(msg, color)
  end
  
  def success_message(msg)
    message(msg, color: :green)
  end
  
  def warning_message(msg)
    message(msg, color: :yellow)
  end
  
  def error_message(msg)
    message(msg, color: :red)
  end
  
  def pause
    puts "\nPressione Enter para continuar..."
    gets
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
  