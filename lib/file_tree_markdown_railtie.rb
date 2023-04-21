require 'file_tree_markdown'
require 'rails'

module FileTreeMarkdown
  class Railtie < Rails::Railtie
    railtie_name :file_tree_markdown

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end
