module MarkdownConstitution
  extend ActiveSupport::Concern
  include ActionView::Helpers::SanitizeHelper
  include ApplicationHelper

  included do
    before_save :markdown_constitution
    scope :without_constitution, -> { without(:constitution) }
  end

  private

  def markdown_constitution
    if self.constitution_changed?
      self.constitution_html = sanitize_markdown(MarkdownGameConverter.format(constitution))
    end
  end
end
