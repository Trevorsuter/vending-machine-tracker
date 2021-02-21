class MachineSnack < ApplicationRecord
  validates_presence_of :machine
  validates_presence_of :snack
  belongs_to :machine
  belongs_to :snack
end