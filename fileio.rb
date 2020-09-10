require 'file/utils'
dir = '/home/ub/fileio/file.xml'
# Create a file and write to it
# File::Utils.create dir do |f|
#   f.write "Hello world!"
# end

# Replace the contents of a file
File::Utils.rewrite dir, 'New contents 9999999999999999999'

# Replace the contents of a file
# File::Utils.rewrite '/some/other/file.rb', 'New contents'
