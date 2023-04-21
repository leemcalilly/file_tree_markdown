require 'file_tree_markdown_generator'
require 'rails'

module FileTreeMarkdown
  class Railtie < Rails::Railtie
    railtie_name :file_tree_markdown

    rake_tasks do
      load 'tasks/file_tree_markdown.rake'
    end
  end
end
