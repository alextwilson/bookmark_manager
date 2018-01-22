feature 'Viewing links' do
  scenario 'User can see stored links' do
    Link.create(url: 'http://www.bbc.co.uk', title: 'BBC - Home')

    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('BBC - Home')
    end
  end
end
