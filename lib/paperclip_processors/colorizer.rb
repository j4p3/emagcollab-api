require 'RMagick'
include Magick

module Paperclip
  class Colorizer < Processor

    def initialize file, options = {}, attachment = nil
      super
      @file = file
      @format = "jpg"
      current_format = File.extname(@file.path)
      @basename = File.basename(@file.path, current_format)
      @transform = options[:transform]
      puts "[paperclip] Transform: #{@transform}"
    end
    
    def make
      puts "[paperclip] Colorizer: File at #{[@basename, @format].compact.join(".")}"
      dst = Tempfile.new([@basename, @format].compact.join("."))

      # set components (in the leakiest way possible)
      buffer = Magick::ImageList.new
      bin = File.open(@file.path, 'r'){ |f| f.read }
      img = buffer.from_blob(bin)
      gray = Image.new(img.columns, img.rows) { self.background_color = "Gray" }
      color = Image.new(img.columns, img.rows) { self.background_color = "hsl(#{100 * 293/360}%,100%,50%)" }

      # process image
      quantized = img.quantize(256, Magick::GRAYColorspace)
      blended = gray.blend(quantized, 1.5)
      colored = blended.blend(color, 0.75)

      # save result
      colored.write "jpg:#{dst.path}"
      dst
    end
  end
end