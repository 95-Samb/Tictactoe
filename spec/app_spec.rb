
require "spec_helper"

describe "Home page" do 
  it "exists" do 
    get "/"

    expect(last_response).to be_ok
  end
  xit "has a button" do
    visit "/"
    expect(page).to have_css('input')
  end
end
describe "Game page" do
  it "exists" do
    get "/game"

    expect(last_response).to be_ok
  end
  it "has a table" do
    get "/game"

    expect(page).to have_css('form')
  end
end