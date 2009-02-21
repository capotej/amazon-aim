require "rexml/document"

include Enumerable
include REXML

module AmazonAIM

  class Reports
  
    def initialize(glob)
      @doc = Document.new glob
    end
  
    def parse
      arr = Array.new
      @doc.root.elements.each("//Report") do |r|
        a = r.text.split(' ').collect { |x| x.split('=').last }
        arr << Report.new(*a)
      end
    arr
    end
      
  end
  
end
