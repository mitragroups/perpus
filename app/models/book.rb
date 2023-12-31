class Book < ApplicationRecord
    belongs_to :author

    def self.urutan_buku_termahal
        order(price: :desc).pluck(:title, :price, :page)
    end

    def self.buku_mahal
        where('price > 300000')
    end 

    def self.thick_page 
        order(page: :desc).pluck(:title, :price, :page)
    end
end
