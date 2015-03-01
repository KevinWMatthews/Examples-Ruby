require 'minitest/autorun'
require_relative "../lib/Person"

# describe <string>, <additional_description>
describe "Person", "A spec of a simple person example" do
  #This describes a test case
  it "has a full name" do
    person = Person.new("Yukihiro", "Matsumoto")
    person.full_name.must_equal "Yukihiro Matsumoto"
  end
end
