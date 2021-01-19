require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your question to the coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Can I borrow 100$?"
    click_on "Ask"

    take_screenshot
    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying im going to work finally gets the approval form the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
