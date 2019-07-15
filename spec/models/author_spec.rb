require 'rails_helper'
RSpec.describe Author do
  describe 'Relationships' do
    it { should have_many :books }
  end
end
