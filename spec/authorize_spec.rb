require 'spec_helper'

describe BarberShop::Authorize do
  include BarberShop::Authorize

  it 'should authorize connection to trello' do
    authorize_on_trello
    Trello::Member.find('me').username.should == 'chussenot'
  end

  it 'should authorize connection to github' do
    authorize_on_github
  end

  it 'should authorize connection to timetask' do
  end

end
