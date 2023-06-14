class JsonFilesController < ApplicationController
    def index
        @files = Dir.glob(Rails.root.join('LinkedInData','Done', '*.json'))
        @data = []
        puts(@files.length)
        
        @files.each do |file|
          file_content = File.read(file)
          parsed_data = JSON.parse(file_content)
          @data << parsed_data
        end
      end
  end