class Product < ApplicationRecord

	PROPERTY_OPTIONS = ['phones_and_tablet', 'tv_and_electronics', 'laptops_and_desktop', 'games_and_console', 'health_and_beauty', 
  		'home_and_office', 'wrist_watches', 'footwears', 'Sports_and_Fitness', 'toy_and_kids', 'provisions', 'cars_and_truck', 'jewellry',
  		 'land_and_properties', 'home_decor_kitchen', 'jobs']
  	validates_inclusion_of :category, :in => PROPERTY_OPTIONS

  	
end
