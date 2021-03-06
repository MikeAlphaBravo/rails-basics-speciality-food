require 'rails_helper'

describe review do
  it { should validate_presence_of :author }
  it { should validate_presence_of :review}
  it { should belong_to :product }
end
