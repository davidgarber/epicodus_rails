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
    expect(page).to have_content 'errors'
  end
end

describe 'the edit a lesson process' do
  it 'edits a lesson' do
    section = Section.create(:title => "Java basics")
    section.lessons.create(:name => "Woot", :body => "Woot Woot", :number => 1)
    visit section_path(section)
    click_on 'Alter'
    fill_in 'Name', :with => 'HTML'
    fill_in 'Body', :with => 'HTML HTML'
    fill_in 'Number', :with => 2
    click_on 'Update Lesson'
    expect(page).to have_content "section"
  end

it "gives errors when no name is entered" do
  section = Section.create(:title => "Java basics")
  section.lessons.create(:name => "Woot", :body => "Woot Woot", :number => 1)
  visit section_path(section)
  click_on "Alter"
  fill_in 'Name', :with => ''
  fill_in 'Body', :with => ''
  fill_in 'Number', :with => 2
  click_on 'Update Lesson'
  expect(page).to have_content "errors"
  end
end

describe 'the delete a lesson process' do
  it 'deletes a lesson' do
    section = Section.create(:title => "Java basics")
    section.lessons.create(:name => "Woot", :body => "Woot Woot", :number => 1)
    visit section_path(section)
    click_on 'Destroy'
    expect(page).to have_content "section"
  end
end
