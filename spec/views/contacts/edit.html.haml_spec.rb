require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "MyString",
      :temperature => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :assigned => "MyString",
      :source => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_temperature[name=?]", "contact[temperature]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_phone_number[name=?]", "contact[phone_number]"

      assert_select "input#contact_assigned[name=?]", "contact[assigned]"

      assert_select "input#contact_source[name=?]", "contact[source]"
    end
  end
end
