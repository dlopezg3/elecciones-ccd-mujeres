class CandidacyPolicy < ApplicationPolicy

  attr_reader :current_candidate, :proposal

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    @record.candidate == user
  end

  def create?
    return true
  end

  def edit?
    record.candidate == user
  end

  def update?
    edit?
  end

end
