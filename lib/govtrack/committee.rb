module GovTrack
  class Committee < Base

    def initialize(attributes={})
      super
      @created = DateTime.parse(@created) if @created
    end
    

    

    
  end
end