
require "spec_helper"

describe "Home page" do
  it "exists" do
    get "/"

    expect(last_response).to be_ok
  end
  it "has a button" do
    visit "/"
    expect(page).to have_css('input')
  end
end
describe "Game page" do
  it "exists" do
    get "/game"

    expect(last_response).to be_ok
  end
  it "has a specfic table" do
    visit "/game"

    expect(page).to have_table("board")
  end

  it "has a 3x3 table" do
    visit "/game"

    expect(page.all("table#board td").count).to eq 9
  end

  it "puts an x in the table" do
    visit "/game"

    click_button "top_left"

    expect(page.find_by_id("top_left")).to have_content("x")
  end

  xit "puts an x in the table at a different position" do
    visit "/game"

    within "table#board" do
      click_button "top_right"
    end

    expect(page.find(id: "top_right")).to have_content("x")
  end
end
