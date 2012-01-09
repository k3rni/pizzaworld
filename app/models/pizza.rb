class Pizza < ActiveRecord::Base

    has_and_belongs_to_many :restaurants
    
    validates_uniqueness_of :name
    validates_presence_of :name, :description
    validates_numericality_of :price

    def select_text
      "#{name} (#{price})"
    end
    
end
