require 'yaml'

yml = open('./ja.yml', 'r') { |f| YAML.load(f) }

messages =  yml["ja"]["errors"]["messages"]
p messages.to_a

