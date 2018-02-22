
class Horario
  attr_reader :h
  attr_reader :m
  attr_reader :s
  def initialize
    set_hours
    set_min
    set_s
    timer
  end

  def set_hours
    puts "Introduce las horas"
    h=gets.chomp.to_i
    set_hours if h<0 || h>23
    @h=h if h>=0 && h<24
  end
  def set_min
    puts "Introduce los minutos"
    m = gets.chomp.to_i
    set_min if m<0 || m>59
    @m=m if m>=0 && m<59
  end
  def set_s
    puts "Introduce los segundos"
    s = gets.chomp.to_i
    set_s if s<0 || s>59
    @s=s if s>=0 && s<59
  end
  def timer
    puts "#{@h} : #{@m} : #{@s}"
    if @s<59
      @s+=1
    else
      @s=0
      if @m<59
        @m+=1
      else
        if @h<23
          @h+=1
        else
          @h=0
        end
      end
    end
    # @s<59 ? @s+=@s : (@s=0 @m<59 ? @m+=@m : (@h<23 ? @h+=@h : @h=0))
    sleep 1
    timer
  end
end

Horario.new
