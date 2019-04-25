#require "./app.rb"
require "spec_helper"

describe "Home page" do 
  it "exists" do 
    get "/"

    expect(last_response).to be_ok
  end
  it "has a button" do
    visit "/"
    page.has_button?
  end
end
describe "Game page" do
  it "exists" do
    get "/Game"

    expect(last_response).to be_ok
  end
  it "has a table" do
    visit "/Game"

    page.has_table?
  end
end