require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_url
    assert_response :success
  end

  test "should create pet with valid attributes" do
    assert_difference("Pet.count") do
      post pets_url, params: {
        pet: {
          name: "Snowy",
          age: "2",
          description: "White and fluffy doggo"
        }
      }
    end

    assert_redirected_to pet_url(Pet.last)
  end

  test "should not create pet with invalid attributes" do
    assert_no_difference("Pet.count") do
      post pets_url, params: {
        pet: {
          name: "",               # invalid: name can't be blank
          age: "3",
          description: "Short"    # invalid: description too short
        }
      }
    end

    assert_response :success
    assert_select "div#error_explanation"
  end

  test "should show pet" do
    get pet_url(@pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_url(@pet)
    assert_response :success
  end

  test "should update pet with valid attributes" do
    patch pet_url(@pet), params: {
      pet: {
        name: "Updated Name",
        age: "4",
        description: "Updated and valid description"
      }
    }

    assert_redirected_to pet_url(@pet)
    @pet.reload
    assert_equal "Updated Name", @pet.name
  end

  test "should not update pet with invalid attributes" do
    patch pet_url(@pet), params: {
      pet: {
        name: "",
        description: "Too short"
      }
    }

    assert_response :success
    assert_select "div#error_explanation"
    @pet.reload
    refute_equal "", @pet.name
  end

  test "should destroy pet" do
    assert_difference("Pet.count", -1) do
      delete pet_url(@pet)
    end

    assert_redirected_to pets_url
  end
end
