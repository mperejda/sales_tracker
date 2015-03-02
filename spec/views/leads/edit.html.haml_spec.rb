require 'rails_helper'

RSpec.describe "leads/edit", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :project => "MyString",
      :needs => "MyString",
      :source => "MyString",
      :contact => "MyString",
      :assigned => "MyString",
      :temperature => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "input#lead_project[name=?]", "lead[project]"

      assert_select "input#lead_needs[name=?]", "lead[needs]"

      assert_select "input#lead_source[name=?]", "lead[source]"

      assert_select "input#lead_contact[name=?]", "lead[contact]"

      assert_select "input#lead_assigned[name=?]", "lead[assigned]"

      assert_select "input#lead_temperature[name=?]", "lead[temperature]"

      assert_select "input#lead_value[name=?]", "lead[value]"
    end
  end
end
