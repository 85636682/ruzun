require 'redcarpet'

module ApplicationHelper
  ALLOW_TAGS = %w(p br img h1 h2 h3 h4 h5 h6 blockquote pre code b i
                  strong em table tr td tbody th strike del u a ul ol li span hr)
  ALLOW_ATTRIBUTES = %w(href src class width height id title alt target rel data-floor)

  def sanitize_markdown(body)
    sanitize(body, tags: ALLOW_TAGS, attributes: ALLOW_ATTRIBUTES)
  end

  def formattime(time, options = {})
    options[:unit]
    options[:unit] = options[:unit].blank? ? "day" : options[:unit]
    case options[:unit]
    when "day"
      DateTime.parse(time.iso8601).strftime('%Y年%m月%d日') if time
    when "noYearOnlyDay"
      DateTime.parse(time.iso8601).strftime('%m月%d日') if time
    when "noYear"
      DateTime.parse(time.iso8601).strftime('%m月%d日 %H:%M') if time
    when "hour"
      DateTime.parse(time.iso8601).strftime('%Y年%m月%d日 %H:%M') if time
    when "noDayOnlyHour"
      DateTime.parse(time.iso8601).strftime('%H:%M') if time
    when "numberString"
      DateTime.parse(time.iso8601).strftime('%Y%m%d%H%M') if time
    end
  end
end
