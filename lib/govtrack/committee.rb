module GovTrack
  class Committee < Base

    def initialize(attributes={})
      super
      @created = DateTime.parse(@created) if @created
    end

    
    def self.find_committee(id)
      new(get("/committee/#{id}"))
    end

    
  end
end