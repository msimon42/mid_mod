RSpec.describe 'when i search for all members of a house' do
  describe 'i get a list of all members of that house and various attributes' do
    before :each do
      visit '/search?house=Gryffindor'
    it 'has a list of 21 members when i search for gryffindor' do
      within("#members") do
        expect(page).to have_css('li', count: 21)
      end
    end

    it 'displays info on member' do
      within("#member-5a1096b33dc2080021cd8762") do
        expect(page).to have_content("Aberforth Dumbledore")
        expect(page).to have_content("Owner, Hog's Head Inn")
        expect(page).to have_content("goat")
        expect(page).to have_content("Gryffindor")
      end
    end
  end
end
