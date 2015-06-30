require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    section = Section.create(:title => "Required reading")
    visit section_path(section)
    click_on "Add a lesson"
    fill_in "Name", :with => "Woot"
    fill_in "Body", :with => "Woot Woot"
    fill_in "Number", :with => 1
    click_on "Create Lesson"
    expect(page).to have_content "Woot"
  end

  it "gives error when no name is entered" do
    section = Section.create(:title => "Required reading")
    visit section_path(section)
    click_on "Add a lesson"
    click_on "Create Lesson"
    expect(page).to have_content 'errors'
  end
end
