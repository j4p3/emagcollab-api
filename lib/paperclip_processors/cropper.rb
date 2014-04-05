require 'RMagick'
include Magick

module Paperclip
  class Cropper < Processor

    def initialize file, options = {}, attachment = nil
      super
      @file = file
      @format = "jpg"
      current_format = File.extname(@file.path)
      @basename = File.basename(@file.path, current_format)
    end
    
    def make
      puts "[paperclip] Cropper: File at #{[@basename, @format].compact.join(".")}"
      dst = Tempfile.new([@basename, @format].compact.join("."))

      # set components
      buffer = Magick::ImageList.new
      bin = File.open(@file.path, 'r'){ |f| f.read }
      img = buffer.from_blob(bin)

      # process image
      resized = img.resize_to_fill(1024, 800)

      # save result
      resized.write "jpg:#{dst.path}"
      dst
    end
  end
end