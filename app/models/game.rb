class Game < ActiveRecord::Base
  include MarkdownConstitution

  scope :without_constitution,   -> { select(column_name - ['constitution']) }
end
