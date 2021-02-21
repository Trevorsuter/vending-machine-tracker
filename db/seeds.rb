# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lou = Owner.create(name: "Lou Scileppi")
mike = Owner.create(name: "Mike Scileppi")
vinny = Owner.create(name: "Vinny Scileppi")

loumachine1 = lou.machines.create(location: "Sliceworks")
loumachine2 = lou.machines.create(location: "Scileppis")
mikemachine1 = mike.machines.create(location: "Colorado Lift")
mikemachine2 = mike.machines.create(location: "Colorado Springs Lift")
vinnymachine1 = vinny.machines.create(location: "Illianos")
vinnymachine2 = vinny.machines.create(location: "Illianos Connecticut")

pringles = Snack.create(name: "Pringles", price: 1.00)
snickers = Snack.create(name: "Snickers", price: 2.00)
goldfish = Snack.create(name: "Goldfish", price: 1.25)
cheetos = Snack.create(name: "Cheetos", price: 1.75)
oreos = Snack.create(name: "Oreos", price: 2.50)
pretzels = Snack.create(name: "Pretzels", price: 0.75)

MachineSnack.create(machine: loumachine1, snack: pringles)
MachineSnack.create(machine: loumachine1, snack: snickers)
MachineSnack.create(machine: loumachine2, snack: snickers)
MachineSnack.create(machine: loumachine2, snack: goldfish)
MachineSnack.create(machine: loumachine2, snack: oreos)
MachineSnack.create(machine: mikemachine1, snack: goldfish)
MachineSnack.create(machine: mikemachine1, snack: oreos)
MachineSnack.create(machine: mikemachine2, snack: pretzels)
MachineSnack.create(machine: mikemachine2, snack: cheetos)
MachineSnack.create(machine: vinnymachine1, snack: pringles)
MachineSnack.create(machine: vinnymachine1, snack: oreos)
MachineSnack.create(machine: vinnymachine1, snack: snickers)
MachineSnack.create(machine: vinnymachine2, snack: snickers)
MachineSnack.create(machine: vinnymachine2, snack: oreos)





