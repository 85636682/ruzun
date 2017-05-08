class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end

  class << self
    def actions
      @actions ||= []
    end
    
    def permit(action_or_actions)
      acts = Array(action_or_actions).collect(&:to_s)
      acts.each do |act|
        define_method("#{act}?") { can? act }
      end
      actions.concat(acts)
    end

    def policies
      @policies ||= Dir.chdir(Rails.root.join('app/policies')) do
        Dir['**/*_policy.rb'].collect do |file|
          file.chomp('.rb').camelize.constantize unless file == File.basename(__FILE__)
        end.compact
      end
    end
    
    def resource
      name.chomp('Policy')
    end
      
  end
  
  private

  def can?(action)
    permisson = {
      action: action,
      resource: record.is_a?(Class) ? record.name : record.class.name
    }
    user.permisson.exists?(permisson)
  end
  
end
