# feature 'Testing' do
#     scenario "can run the content of the page" do
#       visit('/')
#     expect(page).to have_content "Testing infrastructure working!"
#   end
# end

feature "Entering players" do
  scenario 'Can enter the name of the player' do
    sign_in_and_play
    expect(page).to have_content "Rory vs. Chris"
  end
end

feature "Entering player with 20 hit points" do
  scenario 'Can enter player with 20 HP' do
    sign_in_and_play
    expect(page).to have_content "Chris: 20HP"
    expect(page).to have_content "Rory: 20HP"
  end
end

# can keep it in same feature test
feature "Attacking players" do
  scenario 'Can attack a player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Rory attacked Chris"
  end
end


feature "deducting points" do
  scenario 'player 2 receives damage and loses life' do
    sign_in_and_play
    click_link 'Attack'
    # click_link 'Confirmed attack!'
    expect(page).to have_content "Chris: 15 points"
    expect(page).not_to have_content "Chris: 20 points"
  end
end


# feature "Player 2 takes damage" do
#   scenario 'player 2 loses HP' do
#     sign_in_and_play
#     # require "launchy";save_and_open_page
#     click_link 'Attack'
#     click_link 'Next Go'
#     expect(page).to have_content "Chris: 15HP"
#     # click_link 'Your Turn Player 2: Attack'
#   end
# end
