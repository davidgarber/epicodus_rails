require 'rails_helper'

describe 'the delete a section process' do
  it 'deletes a section' do
    section = Section.create(:title => "Java basics")
    visit section_path(section)
    click_on 'Delete'
    expect(page).to have_content "Sections"
  end
end
