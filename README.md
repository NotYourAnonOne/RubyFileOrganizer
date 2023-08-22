# File Organizer

This is a simple script written in Ruby that organizes files from a source directory to a destination directory based on their file extension and creation date.

## How to Use

1. Clone this repository to your local machine.
2. Open your terminal and navigate to the project directory.
3. Run the script by typing the following command:

```ruby
ruby RubyFileOrganizer.rb
```

4. You will be prompted to enter the source directory path. Provide the path to the directory you want to organize.
5. Next, you will be prompted to enter the destination directory path. Provide the path to the directory where you want the organized files to be moved.
6. The script will then iterate through the files in the source directory and move them to the appropriate subdirectories in the destination directory, based on their file extensions and creation dates.
7. Once the file organization process is completed, you will see a message indicating so.

## Requirements

This script requires the following:

- Ruby (version 2.5 or higher)
- Ruby `fileutils` library

To install the required `fileutils` library, you can run the following command:

```ruby
gem install fileutils
```

## License

This project is licensed under the [LICENSE](LICENSE). Feel free to use, modify, and distribute this script as you see fit.
