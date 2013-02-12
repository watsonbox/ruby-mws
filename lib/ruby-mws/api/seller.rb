module MWS
  module API

    class Seller < Base
      def_request [:list_marketplace_participations],
        :verb => :get,
        :uri => '/Sellers/2011-07-01',
        :version => '2011-07-01',
        :mods => [
          lambda { |r|
            r.participations = r.list_participations.participation if r.list_participations
            r.marketplaces = r.list_marketplaces.marketplace if r.list_marketplaces
          }
        ]
    end

  end
end