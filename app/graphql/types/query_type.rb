module Types
  class QueryType < Types::BaseObject
    field :all_links, [LinkType], resolver: Resolvers::LinksSearch, null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end
  end
end
