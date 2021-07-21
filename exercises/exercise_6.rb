require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  validate :carries_either_apparel
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  def carries_either_apparel
    if mens_apparel === false
      errors.add(:mens_apparel, "No apparel")
    end
  end
end

class Employee 
  belongs_to :store
  validates :first_name, :last_name,  :store_id, presence: true
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60) 

@store1.employees.create(first_name: "Senay", hourly_rate: 120)

@store1.employees.create(first_name: "Abel", last_name: "Abraham", hourly_rate: 50)

@store1.employees.create(first_name: "Habte", last_name:"Esub", hourly_rate: 40)

@store2.employees.create(first_name: "Simon", last_name: "Alema", hourly_rate: 70)

@store2.employees.create(first_name: "Robel", last_name: "Haile", hourly_rate: 45)

@store2.employees.create(first_name: "Tesfit", last_name: "Hruy", hourly_rate: 30)

@store2.employees.create(last_name: "Kebede", hourly_rate: 55)

# puts "Which store do you wanna go to?"
# storeName = gets.chomp

# userStore = Store.create("name:#{storeName}")
