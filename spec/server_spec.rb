feature 'Server' do
  scenario 'returns stored temp' do
    visit '/temperature/22'
    visit '/temperature'
    expect(page).to have_content('22')
  end
end
