require 'spec_helper'

class TestMongoidStripper
  include Mongoid::Document

  field :name,  type: String
  field :email, type: String

  strip_fields :name, :email
end

describe TestMongoidStripper do
  describe '.strip_fields' do
    let(:test_mongoid_stripper) { TestMongoidStripper.new(name: 'kd ', email: ' kd.engineer@yahoo.co.in ') }

    it 'strips parameters list' do
      test_mongoid_stripper.valid?
      expect(test_mongoid_stripper.name).to eq 'kd'
      expect(test_mongoid_stripper.email).to eq 'kd.engineer@yahoo.co.in'
    end
  end
end