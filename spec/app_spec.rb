#require "./app.rb"
require "spec_helper"

describe "Home page" do 
  it "loads up with submit button" do 
    get "/"

    expect(last_response).to be_ok
  end
end