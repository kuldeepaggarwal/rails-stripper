require 'spec_helper'

class TestStripper
  include ::ActiveModel::Validations
  include ::ActiveModel::Validations::Callbacks
  include ::Stripper::Rails

  attr_accessor :name, :email

  def initialize(attributes = {})
    attributes.each { |attribute, value| self.public_send("#{ attribute }=", value) }
  end
end

describe TestStripper do
  describe '.strip_fields' do
    let(:test_stripper) { TestStripper.new(name: 'kd ', email: ' kd.engineer@yahoo.co.in ') }
    before { TestStripper.reset_callbacks(:validation) }

    context 'when no parameters are passed' do
      it 'does not strip any attribute' do
        TestStripper.strip_fields
        test_stripper.valid?
        expect(test_stripper.name).to eq 'kd '
        expect(test_stripper.email).to eq ' kd.engineer@yahoo.co.in '
      end
    end

    context 'when parameters are passed' do
      it 'strips parameters list' do
        TestStripper.strip_fields :name, :email
        test_stripper.valid?
        expect(test_stripper.name).to eq 'kd'
        expect(test_stripper.email).to eq 'kd.engineer@yahoo.co.in'
      end
    end
  end
end