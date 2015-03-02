require 'rails_helper'

RSpec.describe "leads/show", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :project => "Project",
      :needs => "Needs",
      :source => "Source",
      :contact => "Contact",
      :assigned => "Assigned",
      :temperature => "Temperature",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Project/)
    expect(rendered).to match(/Needs/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/Assigned/)
    expect(rendered).to match(/Temperature/)
    expect(rendered).to match(/Value/)
  end
end
