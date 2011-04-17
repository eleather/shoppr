# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

category_groceries = Category.create(:name => 'Groceries', :description => 'Grocery lists', :icon_filename => 'Shoppingcart_128x128.png')
Category.create(:name => 'Clothing', :description => 'Clothes shopping', :icon_filename => '')
category_errands = Category.create(:name => 'Errands', :description => 'Errands', :icon_filename => '')

List.create(:name => 'List A', :category => category_groceries, :due_at => Time.now + 6.hours, :description => 'Desc A')
List.create(:name => 'List B', :category => category_errands, :due_at => Time.now + 1.day, :description => 'Desc B')
List.create(:name => 'List C', :category => category_errands, :due_at => Time.now + 3.days, :description => 'Desc C')