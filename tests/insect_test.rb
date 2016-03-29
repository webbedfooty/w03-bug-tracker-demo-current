require "test_helper"
require_relative "../lib/insect.rb"

class InsectTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    refute_nil(insect)
  end

  def test_has_a_name
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.name = "Giant Gadfly"
    assert_equal("Giant Gadfly", insect.name)
  end

  def test_has_a_description
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.description = "Pretty friendly, but sort of scary looking."
    assert_equal("Pretty friendly, but sort of scary looking.", insect.description)
  end

  def test_has_a_location
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.location = "Chilling on a sweet rock"
    assert_equal("Chilling on a sweet rock", insect.location)
  end

  def test_has_a_seen_by
    insect = Insect.new(name: "Fuzzy Mantis", description: "Fuzzy and mantis-y", location: "In my shoes", seen_by: "Andrew")
    insect.seen_by = "Ruth"
    assert_equal("Ruth", insect.seen_by)
  end

  def test_validator_should_fail_insect_with_no_name
    i = Insect.new(name: "Fuzzy mantis", description: "Fierce and cuddly",
                      seen_by: "Andrew", location: "In a tree")
    assert(i.my_valid?, "should be valid at creation")

    i.name = nil
    refute(i.my_valid?, "should be invalid without a name")

    i.name = ""
    refute(i.my_valid?, "should be invalid with an empty name")
  end

end
