require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should have_many :machine_snacks }
    it { should have_many :snacks }
    it { should belong_to :owner }
  end

  describe 'methods' do
    it 'can find the average price of all snacks' do
      owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    pringles = Snack.create(name: "Pringles", price: 1.50)
    snickers = Snack.create(name: "Snickers", price: 2.00)
    MachineSnack.create(machine: dons, snack: pringles)
    MachineSnack.create(machine: dons, snack: snickers)

    expect(dons.average_price).to eq(1.75)
    end
  end
end
