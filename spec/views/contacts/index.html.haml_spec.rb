require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :temperature => "Temperature",
        :email => "Email",
        :phone_number => "Phone Number",
        :assigned => "Assigned",
        :source => "Source"
      ),
      Contact.create!(
        :name => "Name",
        :temperature => "Temperature",
        :email => "Email",
        :phone_number => "Phone Number",
        :assigned => "Assigned",
        :source => "Source"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Assigned".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
