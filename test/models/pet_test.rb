require "test_helper"

class PetTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    pet = Pet.new(name: "Buddy", description: "Loyal and friendly dog")
    assert pet.valid?
  end

  test "is invalid without a name" do
    pet = Pet.new(description: "Loyal and friendly dog")
    assert_not pet.valid?
    assert_includes pet.errors[:name], "can't be blank"
  end

  test "is invalid with short description" do
    pet = Pet.new(name: "Buddy", description: "Short")
    assert_not pet.valid?
    assert_includes pet.errors[:description], "is too short (minimum is 10 characters)"
  end
end
