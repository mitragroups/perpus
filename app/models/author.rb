class Author < ApplicationRecord
    has_many :books

    def self.author_male
        where("gender != 'Male'")
    end
    
    def self.author_female 
        where("gender = 'Female'").pluck(:name)
    end
end
