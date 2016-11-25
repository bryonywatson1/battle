require 'spec_helper'

describe "Attack" do
  context "When attack button is clicked it" do

      before do
        sign_in_and_play
        click_button "Attack"
      end

      it "should redirect to /attack" do
        expect(page.current_path).to eq "/attack"
      end
  end

  context "when redirected to /attack it" do
    before do
      sign_in_and_play
      click_button "Attack"
    end

    it "should reduce the other players hitpoints by 10" do
      expect(page).to have_content("Foo has been attacked! Their HP has been reduced to 50")
    end
  end




end
