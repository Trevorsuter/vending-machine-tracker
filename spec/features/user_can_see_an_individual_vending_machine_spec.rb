require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see the name of all the associated snacks along wiht their price' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    pringles = Snack.create(name: "Pringles", price: 1.50)
    snickers = Snack.create(name: "Snickers", price: 2.00)
    MachineSnack.create(machine: dons, snack: pringles)
    MachineSnack.create(machine: dons, snack: snickers)

    visit machine_path(dons)

    expect(page).to have_content(pringles.name)
    expect(page).to have_content(pringles.price)
    expect(page).to have_content(snickers.name)
    expect(page).to have_content(snickers.price)
  end

  scenario 'they see the average price of all the machines snacks' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    pringles = Snack.create(name: "Pringles", price: 1.50)
    snickers = Snack.create(name: "Snickers", price: 2.00)
    MachineSnack.create(machine: dons, snack: pringles)
    MachineSnack.create(machine: dons, snack: snickers)

    visit machine_path(dons)

    expect(page).to have_content(dons.average_price)
  end
end
