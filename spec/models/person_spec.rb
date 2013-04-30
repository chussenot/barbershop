require 'spec_helper'

describe BarberShop::Person do
  include Helpers

  let(:person) { Fabricate :person }

  describe 'fields' do
    # it { person.attributes.keys.include?(:trello_id).should be_true }
    # it { person.attributes.keys.include?(:github_id)}
    # it { person.attributes.keys.include?(:timetask_id)}
  end

  describe 'building from a provider ressource' do
    it 'from a Trello member' do
      # p = BarberShop.buid_from_trello_member member
      # p.username.should == 'me'
    end

    it 'from a Github user' do
    end

    it 'from a Timetask person' do
    end

  end

end
