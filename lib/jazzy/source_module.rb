require 'jazzy/config'
require 'jazzy/source_declaration'

module Jazzy
  class SourceModule
    attr_accessor :name
    attr_accessor :docs
    attr_accessor :doc_coverage
    attr_accessor :doc_structure
    attr_accessor :author_name
    attr_accessor :github_url
    attr_accessor :github_file_prefix
    attr_accessor :author_url
    attr_accessor :dash_url

    def initialize(options, docs, doc_structure, doc_coverage)
      self.docs = docs
      self.doc_structure = doc_structure
      self.doc_coverage = doc_coverage
      self.name = options.module_name
      self.author_name = options.author_name
      self.github_url = options.github_url
      self.github_file_prefix = options.github_file_prefix
      self.author_url = options.author_url
      self.dash_url = options.dash_url
    end

    def all_declarations
      all_declarations = []
      visitor = lambda do |d|
        all_declarations.unshift(*d)
        d.map(&:children).each { |c| visitor[c] }
      end
      visitor[docs]
      all_declarations
    end
  end
end
