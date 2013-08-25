module Minidown
  class LineElement < Element
    def initialize doc, content=nil
      super
    end
    
    def parse
      nodes << self unless nodes.last.is_a?(LineElement)
    end

    def to_node doc
      Nokogiri::XML::Node.new 'br', doc
    end
  end
end
