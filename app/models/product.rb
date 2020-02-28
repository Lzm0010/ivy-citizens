class Product < ApplicationRecord
    has_many :line_items
    has_many :orders, through: :line_items

    filterrific(
        default_filter_params: { sorted_by: "name_asc" },
        available_filters: [
          :sorted_by,
          :search_query
        ],
      )

    scope :search_query, ->(query) {
        # Filters products whose name or sku matches the query
        return nil  if query.blank?
        # condition query, parse into individual keywords
        terms = query.downcase.split(/\s+/)
        # replace "*" with "%" for wildcard searches,
        # append '%', remove duplicate '%'s
        puts "First terms: #{terms}"
        terms = terms.map { |e|
        (e.gsub('*', '%') + '%').gsub(/%+/, '%')
        }
        puts "Second terms; #{terms}"
        # configure number of OR conditions for provision
        # of interpolation arguments. Adjust this if you
        # change the number of OR conditions.
        num_or_conditions = 2
        where(
        terms.map {
            or_clauses = [
            "LOWER(products.name) LIKE ?",
            "LOWER(products.sku) LIKE ?"
            ].join(' OR ')
            "(#{ or_clauses })"
        }.join(' AND '),
        *terms.map { |e| ["%#{e}"] * num_or_conditions }.flatten
        )
    }

    scope :sorted_by, ->(sort_key) {
    # Sorts products by sort_key
        direction = /desc$/.match?(sort_key) ? "desc" : "asc"
        case sort_key.to_s
        when /^name/
            order("LOWER(products.name) #{direction}")
        when /^sku/
            order("LOWER(products.sku) #{direction}")
        when /^amount/
            order("products.amount + 0 #{direction}")
        else
            raise(ArgumentError, "Invalid sort optionL #{sort_key.inspect}")
        end
    }

    def self.options_for_sorted_by
        [
          ["Name (a-z)", "name_asc"],
          ["SKU (a-z)", "sku_asc"],
          ["Stock available", "amount_desc"]
        ]
    end
end
