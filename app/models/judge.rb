class Judge < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_name,
                  :birth_month, :birth_day, :birth_year,
                  :death_month, :death_day, :death_year,
                  :birth_city, :birth_state,
                  :death_city, :death_year,
                  :gender, :race, :id

  def full_name
    name = self.first_name
    if !self.middle_name.nil?
      name += (" " + self.middle_name)
    end
    name += (" " + self.last_name)
    return name
  end

  def full_birthday
    if !self.birth_year.blank?
      return Date.new(self.birth_year, (self.birth_month||1), (self.birth_day||1))
    else
      return "UNKNOWN"
    end
  end

  def full_deathday
    if !self.death_year.blank?
      return Date.new(self.death_year, (self.death_month||1), (self.death_day||1))
    else
      return "UNDEAD"
    end
  end

  def full_birthplace
    if !self.birth_state.blank?
      return "#{self.birth_city}, #{self.birth_state}"
    else
      return "UNKNOWN"
    end
  end

  def full_deathplace
    if !self.death_state.blank?
      return "#{self.death_city}, #{self.death_state}"
    else
      return "UNKNOWN"
    end
  end

  def gendered
    if !self.gender.blank?
      return "#{self.gender}"
    else
      return "UNGENDERED"
    end
  end

  def raced
    if !self.race.blank?
      return "#{self.race}"
    else
      return "UNRACED"
    end
  end

end
