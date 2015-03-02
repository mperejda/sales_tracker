require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :project => "Project",
        :needs => "Needs",
        :source => "Source",
        :contact => "Contact",
        :assigned => "Assigned",
        :temperature => "Temperature",
        :value => "Value"
      ),
      Lead.create!(
        :project => "Project",
        :needs => "Needs",
        :source => "Source",
        :contact => "Contact",
        :assigned => "Assigned",
        :temperature => "Temperature",
        :value => "Value"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => "Needs".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Assigned".to_s, :count => 2
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
