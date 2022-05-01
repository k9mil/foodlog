require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakslow", carbohydrates: 19, fats: 18, proteins: 17, calories: 10000)

    assert entry.save
  end
  
  test "Should not save without meal_type" do
    entry = Entry.new(carbohydrates: 19, fats: 18, proteins: 17, calories: 10000)

    assert_not entry.save
  end
  
    
  test "Should not save without carbohydrates" do
    entry = Entry.new(meal_type: "Breakslow", fats: 18, proteins: 17, calories: 10000)

    assert_not entry.save
  end

    
  test "Should not save without fats" do
    entry = Entry.new(meal_type: "Breakslow", carbohydrates: 19, proteins: 17, calories: 10000)

    assert_not entry.save
  end
    
  test "Should not save without proteins" do
    entry = Entry.new(meal_type: "Breakslow", carbohydrates: 19, fats: 18, calories: 10000)

    assert_not entry.save
  end
      
  test "Should not save without calories" do
    entry = Entry.new(meal_type: "Breakslow", carbohydrates: 19, fats: 18, proteins: 17)

    assert_not entry.save
  end
end