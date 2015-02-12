require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :name => "MyString",
      :temperature => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :assigned => "MyString",
      :source => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_temperature[name=?]", "contact[temperature]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_phone_number[name=?]", "contact[phone_number]"

      assert_select "input#contact_assigned[name=?]", "contact[assigned]"

      assert_select "input#contact_source[name=?]", "contact[source]"
    end
  end
end
