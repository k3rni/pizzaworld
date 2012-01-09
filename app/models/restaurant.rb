class Restaurant < ActiveRecord::Base
    has_and_belongs_to_many :pizzas
    
    validates_uniqueness_of :name

    validates_presence_of :name, :address
    validates_presence_of :opening_hours

    validate :nonempty_menu


    def nonempty_menu
      if pizza_ids.size == 0
        errors.add :pizza_ids, "Must select at least one pizza to serve"
      end
    end
end
