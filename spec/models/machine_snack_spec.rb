require 'rails_helper'

RSpec.describe MachineSnack, type: :model do
  describe 'validations' do
    it { should validate_presence_of :machine }
    it { should validate_presence_of :snack }
    it { should belong_to :snack }
    it { should belong_to :machine }
  end
end