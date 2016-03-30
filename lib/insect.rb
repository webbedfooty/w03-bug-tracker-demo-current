class Insect < ActiveRecord::Base
  def researcher
    Researcher.find_by_id(researcher_id)
  end
  def my_valid?
    name.nil? || name.empty
  end
end
