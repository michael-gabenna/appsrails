require 'rails_helper'

RSpec.describe "entities/new", type: :view do
  before(:each) do
    assign(:entity, Entity.new(
      :name => "MyString",
      :street => "MyText",
      :tel => "MyString"
    ))
  end

  it "renders new entity form" do
    render

    assert_select "form[action=?][method=?]", entities_path, "post" do

      assert_select "input#entity_name[name=?]", "entity[name]"

      assert_select "textarea#entity_street[name=?]", "entity[street]"

      assert_select "input#entity_tel[name=?]", "entity[tel]"
    end
  end
end
