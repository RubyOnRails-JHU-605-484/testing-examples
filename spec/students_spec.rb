require 'rspec'
require 'rspec/collection_matchers'

describe 'Class full of students' do
  before { @students = %w(Joe Moe) }

  specify { expect(@students).to have(2).entries }
  specify { expect(@students).to have(2).students }
  specify { expect(@students).to have(2).hot_dogs }
  specify { expect(@students).to have(5).hot_dogs }
end