class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.present?
      can :access, :rails_admin   # grant access to rails_admin
      can :manage, :all           # allow the user to perform any action on any model
    end
  end
end