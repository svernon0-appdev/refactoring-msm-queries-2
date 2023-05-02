# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  # has_many(:filmography, { :foreign_key => "director_id", :class_name => "Movie" })

  # Can drop the foreign key, as it's similar to what it should be, 
  # but the method name differs from the class, so we can't change that.
  has_many(:filmography, { :class_name => "Movie" })

  # def filmography
  #   key = self.id

  #   the_many = Movie.where({ :director_id => key })

  #   return the_many
  # end
end
