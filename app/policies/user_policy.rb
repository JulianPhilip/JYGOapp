class UserPolicy < ApplicationPolicy
# class Scope < Scope
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def resolve
    scope.all
  end

  def update?
    record.user == user
  end
# end
end
puts "test"

