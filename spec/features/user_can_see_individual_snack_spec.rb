require 'rails_helper'

RSpec.describe 'When I visit a Snacks show page', type: :feature do

  scenario 'I see the name and price of the snack' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    pringles = Snack.create(name: "Pringles", price: 1.50)
    snickers = Snack.create(name: "Snickers", price: 2.00)
    MachineSnack.create(machine: dons, snack: pringles)
    MachineSnack.create(machine: dons, snack: snickers)
    
    visit snack_path(pringles)

    expect(page).to have_content(pringles.name)
    expect(page).to have_content(pringles.price)
  end
  
  scenario 'I see a list of locations and their machines, with the average price and a count of the snacks' do
  owner = Owner.create(name: "Sam's Snacks")
  dons  = owner.machines.create(location: "Don's Mixed Drinks")
    pringles = Snack.create(name: "Pringles", price: 1.50)
    snickers = Snack.create(name: "Snickers", price: 2.00)
    MachineSnack.create(machine: dons, snack: pringles)
    MachineSnack.create(machine: dons, snack: snickers)
    
    visit snack_path(pringles)

    expect(page).to have_content("#{dons.location} Vending Machine")
    expect(page).to have_content(dons.average_price)
    expect(page).to have_content(dons.snacks.count)
  end
end