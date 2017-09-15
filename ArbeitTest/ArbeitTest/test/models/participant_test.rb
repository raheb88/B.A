require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @seminar = seminars(:coi)
    @participant  = Participant.new(email: "ra@msn.com", participant_id: @seminar.id )
  end

  test "should be valid" do
    assert @particpant.valid?
  end

  test "particpant id should be present" do
    @particpant.participant_id = nil
    assert_not @participant.valid?
  end

end
