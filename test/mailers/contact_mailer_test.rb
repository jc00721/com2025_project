require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do 
    mail = ContactMailer.contact_email("jc00721@surrey.ac.uk", "Janes", "test subject", @message = "test")
    assert_equal ["admin@audiovape.io"], mail.to
    assert_equal ["admin@audiovape.io"], mail.from

  end
end
