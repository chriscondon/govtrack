module GovTrack
  class Committee < Base

    def initialize(attributes={})
      super
      @created = DateTime.parse(@created) if @created
    end

    
    def self.find_committee(id)
      new(get("/committee/#{id}"))
    end
    
    # Committee Endpoint has limit of 100 items.
    # "Offset" is used to iterate through all items by multiples of 100 (similar to a "page").
    def self.all(offset=0)
      new(get("/committee?offset=#{offset}"))
    end

    
  end
end
