namespace :file_tree_markdown do
  desc "Generate a Markdown file with your app's file structure"
  task generate: :environment do
    require 'file_tree_markdown_generator'
    FileTreeMarkdownGenerator.new.generate
  end
end
