# frozen_string_literal: true

require_relative "file_tree_markdown/version"

module FileTreeMarkdown
  class Error < StandardError; end
  require 'file_tree_markdown_railtie' if defined?(Rails)
end
