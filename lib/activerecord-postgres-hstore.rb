require 'active_support'

if RUBY_PLATFORM == "jruby"
  require 'activerecord-jdbcpostgresql-adapter'
else
  require 'pg'
end

if defined? Rails
  require "activerecord-postgres-hstore/railties"
else
  ActiveSupport.on_load :active_record do
    require "activerecord-postgres-hstore/activerecord"
  end
end
require "activerecord-postgres-hstore/string"
require "activerecord-postgres-hstore/hash"
require "activerecord-postgres-hstore/coder"
