require 'minitest/autorun'
require_relative "../lib/Person"

# describe <string>, <additional_description>
describe "Person", "A spec of a simple person example" do

  #describes can be nested
  describe "when name is empty" do
    it "is not valid" do
      person = Person.new()
      person.wont_be :valid?
    end
  end

  describe "when name is not empty" do
    #Multiple test cases can be within a single describe
    it "is valid" do
      person = Person.new("Yikihiro", "Matsumoto")
      person.must_be :valid?
    end

    it "has a full name" do
      person = Person.new("Yukihiro", "Matsumoto")
      person.full_name.must_equal "Yukihiro Matsumoto"
    end
  end
end
