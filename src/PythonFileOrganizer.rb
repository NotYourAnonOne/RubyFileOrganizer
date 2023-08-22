require 'fileutils'
require 'date'

# Get source directory from user input
print "Enter the source directory path: "
source_dir = gets.chomp

# Get destination directory from user input
print "Enter the destination directory path: "
destination_dir = gets.chomp

# Iterate through files in the source directory
Dir.foreach(source_dir) do |filename|
  next if filename == '.' || filename == '..'

  file_path = File.join(source_dir, filename)
  next unless File.file?(file_path)

  file_extension = File.extname(filename)[1..-1]
  file_type_dir = File.join(destination_dir, file_extension)
  FileUtils.mkdir_p(file_type_dir)

  file_date = File.mtime(file_path)
  year_dir = File.join(file_type_dir, file_date.year.to_s)
  month_dir = File.join(year_dir, '%02d' % file_date.month)
  FileUtils.mkdir_p(month_dir)

  new_file_path = File.join(month_dir, filename)
  FileUtils.move(file_path, new_file_path)
end

puts "File organization completed."
