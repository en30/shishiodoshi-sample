require 'slack-notifier'

class Shishiodoshi::Slack < Shishiodoshi::Base
  def notifier
    @notifier ||= ::Slack::Notifier.new ENV['SLACK_URL']
  end

  def flush!
    notifier.ping(message)
    super
  end

  private

  def message
    if full?
      wrap 'All servers restarted :smile:'
    else
      wrap "Error: #{@max_items - items.count} servers have not restarted yet :skull:"
    end
  end

  def wrap(text)
    "[#{@id}] #{text}\n#{items.map { |i| "- #{i[:message]}" }.join("\n")}"
  end
end
