module GovTrack
  class CommitteeMember < Base

    def initialize(attributes={})
      super
      @created = DateTime.parse(@created) if @created
    end

    
    def self.find_committee_member(id)
      new(get("/committee_member/#{id}"))
    end
    
    # CommitteeMember Endpoint has limit of 100 items.
    # "Offset" is used to iterate through all items by multiples of 100 (similar to a "page").
    def self.all(offset=0)
      new(get("/committee_member?offset=#{offset}"))
    end

    
  end
end
