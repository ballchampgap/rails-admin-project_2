class Epidemic < ApplicationRecord
    paginates_per 10
    def self.to_csv
        CSV.generate do |csv|
          csv << column_names
          all.each do |epidemic|
            csv << epidemic.attributes.values_at(*column_names)
      end
    end
    end

    def to_csv
  
    end
end
