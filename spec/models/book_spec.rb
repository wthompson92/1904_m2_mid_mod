require 'rails_helper'
RSpec.describe Book do
  describe 'Relationships' do
    it { should have_many :authors }
  end
end
