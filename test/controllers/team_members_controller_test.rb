require "test_helper"

class TeamMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_member = team_members(:one)
  end

  test "should get index" do
    get team_members_url
    assert_response :success
  end

  test "should get new" do
    get new_team_member_url
    assert_response :success
  end

  test "should create team_member" do
    assert_difference("TeamMember.count") do
      post team_members_url, params: { team_member: { email: @team_member.email, image: @team_member.image, name: @team_member.name, role: @team_member.role } }
    end

    assert_redirected_to team_member_url(TeamMember.last)
  end

  test "should show team_member" do
    get team_member_url(@team_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_member_url(@team_member)
    assert_response :success
  end

  test "should update team_member" do
    patch team_member_url(@team_member), params: { team_member: { email: @team_member.email, image: @team_member.image, name: @team_member.name, role: @team_member.role } }
    assert_redirected_to team_member_url(@team_member)
  end

  test "should destroy team_member" do
    assert_difference("TeamMember.count", -1) do
      delete team_member_url(@team_member)
    end

    assert_redirected_to team_members_url
  end
end
