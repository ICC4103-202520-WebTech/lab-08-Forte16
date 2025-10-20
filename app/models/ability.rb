class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    
    user ||= User.new # guest user (not logged in)

    # Rule: Admins can do anything
    if user.admin?
      can :manage, :all
    else
      # Rule: Regular users can read all recipes
      can :read, :all

      # Rule: Regular users can create new recipes
      can :create, Recipe

      # Rule: Regular users can only update or delete their own recipes
      # The user_id of the recipe must match the id of the logged-in user.
      can [:update, :destroy], Recipe, user_id: user.id
    end
  end
end