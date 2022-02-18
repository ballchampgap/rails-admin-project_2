class Pest < ApplicationRecord
    def self.to_csv
        CSV.generate do |csv|
          csv << column_names
          all.each do |pest|
            csv << pest.attributes.values_at(*column_names)
      end
    end
    end

    def to_csv
  
    end
end
