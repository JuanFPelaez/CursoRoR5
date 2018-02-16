class Candidato
  def initialize (years, github, languages, applied, age)
    @years_of_experience = years
    @github_points = github
    @languages_worked_with = languages
    @applied_recently = applied
    @age = age
  end

  def valido
    knows("Ruby")&&(experience(2)||points(500))&&older(15)&&not_applied ? ok : wrong
  end

  def knows language
    @languages_worked_with.index(language)!=nil
  end

  def experience data
    @years_of_experience > data
  end

  def points data
    @github_points > data
  end

  def older data
    @age > data
  end

  def not_applied
    !@applied_recently
  end

  def ok
    puts "Candidato válido"
  end

  def wrong
    puts "El candidato no cumple algún requisito"
  end
end

c=Candidato.new(4,600,["Ruby","Java","C"],false,30)
c.valido
