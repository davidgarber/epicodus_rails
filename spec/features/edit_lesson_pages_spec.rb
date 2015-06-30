# require 'rails_helper'
#
# describe 'the edit a lesson process' do
#   it 'edits a lesson' do
#     visit sections_path
#     section = Section.create(:title => "Java basics")
#     click_on "Java Basics"
#     lesson = Lesson.create(:name => "Woot", :body => "Woot Woot", :number => 1)
#     click_on "Edit"
#     fill_in 'Name', :with => 'HTML'
#     fill_in 'Body', :with => 'HTML HTML'
#     fill_in 'Number', :with => 2
#     click_on 'Update Lesson'
#     expect(page).to have_content "Sections"
#   end
#
#   it "gives errors when no title is entered" do
#     section = Section.create(:title => "Java basics")
#     visit section_path(section)
#     click_on 'Edit'
#     fill_in 'Name', :with => ''
#     click_on "Update Lesson"
#     expect(page).to have_content 'errors:'
#   end
# end
