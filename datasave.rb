require 'json'

json = '["foo", 1, 1.0, 2.0e2, true, false, null]'
ruby = JSON.parse(json)

p json
p ruby

stringi = JSON.generate(ruby)

p stringi
