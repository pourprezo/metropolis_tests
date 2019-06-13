# spec/model/new_city_spec.rb
require "rails_helper"

RSpec.describe City, :type => :model do
  subject {
    described_class.new(name: "Tokqwertyuiolpdk")
  }

  it 'has valid attributes' do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
  subject.name = nil
  expect(subject).to_not be_valid
end
end
