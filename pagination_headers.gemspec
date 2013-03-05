
# -*- encoding: utf-8 -*-
$:.push('lib')
require "pagination_headers/version"

Gem::Specification.new do |s|
  s.name     = "pagination_headers"
  s.version  = PaginationHeaders::VERSION.dup
  s.date     = "2013-03-05"
  s.summary  = "Add an X-Pagination header with each request that returns paging information."
  s.email    = "feras@buttercloud.com"
  s.homepage = ""
  s.authors  = ['Feras Hirzalla']
  
  s.description = <<-EOF
	Add an X-Pagination header with each request that returns paging information like total number of pages, current page, & more.
EOF
  
  dependencies = [
    # Examples:
    # [:runtime,     "rack",  "~> 1.1"],
    # [:development, "rspec", "~> 2.1"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "1.8.24"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
