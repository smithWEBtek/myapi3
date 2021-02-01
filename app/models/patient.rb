require 'csv'

class Patient < ApplicationRecord
  validates :email, uniqueness: true

  def self.import
    file = Rails.root.join('lib', 'assets', 'cancer_study.csv')
    CSV.foreach(file, headers: true) do |row|
      p = Patient.new(
       first_name: row[1],
       last_name: row[2],
       email: row[3],
      #  diagnosis: scramble(row[4]),
       diagnosis: (row[4]),
      )
      if p.save
        puts '*'
      else
        puts "#{row} data not saved ---------------------------" 
      end
    end
  end

  def scramble
    self.diagnosis.gsub(' ', '').downcase.reverse.split.sort.join
  end

end
