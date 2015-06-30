require 'rails_helper'

describe 'the edit a section process' do
  it 'edits a section' do
    section = Section.create(:title => "Java basics")
    visit section_path(section)
    click_on 'Edit'
    fill_in 'Title', :with => 'HTML'
    click_on 'Update Section'
    expect(page).to have_content "Sections"
  end

  it "gives errors when no title is entered" do
    section = Section.create(:title => "Java basics")
    visit section_path(section)
    click_on 'Edit'
    fill_in 'Title', :with => ''
    click_on "Update Section"
    expect(page).to have_content 'errors:'
  end
end
