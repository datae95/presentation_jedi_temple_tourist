require "test_helper"

class ArticleMailerTest < ActionMailer::TestCase
  test "booking_confirmation_for" do
    mail = ArticleMailer.booking_confirmation_for
    assert_equal "Booking confirmation for", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
