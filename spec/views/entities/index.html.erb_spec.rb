require 'rails_helper'

RSpec.describe "entities/index", type: :view do
  before(:each) do
    assign(:entities, [
      Entity.create!(
        :name => "Name",
        :street => "MyText",
        :tel => "Tel"
      ),
      Entity.create!(
        :name => "Name",
        :street => "MyText",
        :tel => "Tel"
      )
    ])
  end

  it "renders a list of entities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
  end
end
