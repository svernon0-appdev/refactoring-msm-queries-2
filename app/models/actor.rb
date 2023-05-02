# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  # has_many(:characters, { :foreign_key => "actor_id", :class_name => "Character" })

  has_many(:characters)

  # def characters
  #   key = self.id

  #   the_many = Character.where({ :actor_id => key })

  #   return the_many
  # end

  # many to many join says what two attributes am I looking at.
  # Source is where I want to pull data, through is how I identify
  has_many(:filmography, { :through => "characters", :source => "movie" })

  # def filmography
  #   the_many = Array.new

  #   self.characters.each do |joining_record|
  #     destination_record = joining_record.movie

  #     the_many.push(destination_record)
  #   end

  #   return the_many
  # end

end
