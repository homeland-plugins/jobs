$:.push File.expand_path("lib", __dir__)

require "homeland/jobs"

Homeland.register_plugin do |s|
  s.name           = 'jobs'
  s.display_name   = '招聘'
  s.description    = "简单的招聘栏目"
  s.version        = "1.1.0"
  s.navbar_link    = true
  s.root_path      = "/jobs"
end
