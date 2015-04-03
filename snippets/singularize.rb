require 'active_support/inflector'

File.open('../dicts/object.txt').each_line { |l| puts l.singularize }
