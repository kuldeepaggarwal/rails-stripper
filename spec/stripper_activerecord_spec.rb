require 'spec_helper'

class TestActiveRecordStripper < ActiveRecord::Base
  strip_fields :name, :email
end

describe TestActiveRecordStripper do
  describe '.strip_fields' do
    let(:test_activerecord_stripper) { TestActiveRecordStripper.new(name: 'kd ', email: ' kd.engineer@yahoo.co.in ') }

    it 'strips parameters list' do
      test_activerecord_stripper.valid?
      expect(test_activerecord_stripper.name).to eq 'kd'
      expect(test_activerecord_stripper.email).to eq 'kd.engineer@yahoo.co.in'
    end
  end
end