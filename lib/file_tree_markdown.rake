namespace :file_tree_markdown do
  desc 'Generate a Markdown file with the app file tree'
  task generate: :environment do
    root_directory = Rails.root.to_s
    generator = FileTreeMarkdownGenerator.new(root_directory)
    generator.generate_markdown_file
    puts 'Generated file_tree.md'
  end
end
