class SpreeExtendProducts::Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :create, :update, :destroy], Spree::Author
    can [:read, :create, :update, :destroy], Spree::Brand
  end
end

# Spree::Ability.register_ability SpreeExtendProducts::Ability
