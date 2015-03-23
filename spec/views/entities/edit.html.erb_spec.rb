require 'rails_helper'

RSpec.describe "entities/edit", type: :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :name => "MyString",
      :street => "MyText",
      :tel => "MyString"
    ))
  end

  it "renders the edit entity form" do
    render

    assert_select "form[action=?][method=?]", entity_path(@entity), "post" do

      assert_select "input#entity_name[name=?]", "entity[name]"

      assert_select "textarea#entity_street[name=?]", "entity[street]"

      assert_select "input#entity_tel[name=?]", "entity[tel]"
    end
  end
end
