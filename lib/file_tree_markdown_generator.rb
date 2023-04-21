require 'find'

class FileTreeMarkdownGenerator
  def initialize(root_directory)
    @root_directory = root_directory
  end

  def generate_markdown_file
    output_file = File.join(@root_directory, 'file_tree.md')
    File.open(output_file, 'w') do |file|
      generate_tree(file, @root_directory)
    end
  end

  private

  def generate_tree(file, directory, indent = '')
    Dir.entries(directory).sort.each do |entry|
      next if entry == '.' || entry == '..'

      path = File.join(directory, entry)
      if File.directory?(path)
        file.puts("#{indent}- #{entry}/")
        generate_tree(file, path, "#{indent}  ")
      else
        file.puts("#{indent}- #{entry}")
      end
    end
  end
end
