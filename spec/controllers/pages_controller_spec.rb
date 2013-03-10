require 'spec_helper'

describe PagesController do

  describe "GET 'creators'" do
    it "returns http success" do
      get 'creators'
      response.should be_success
    end
  end

  describe "GET 'CRS'" do
    it "returns http success" do
      get 'CRS'
      response.should be_success
    end
  end

  describe "GET 'currentlyshowing'" do
    it "returns http success" do
      get 'currentlyshowing'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'newreleases'" do
    it "returns http success" do
      get 'newreleases'
      response.should be_success
    end
  end

  describe "GET 'policies'" do
    it "returns http success" do
      get 'policies'
      response.should be_success
    end
  end

  describe "GET 'webinfo'" do
    it "returns http success" do
      get 'webinfo'
      response.should be_success
    end
  end

end
