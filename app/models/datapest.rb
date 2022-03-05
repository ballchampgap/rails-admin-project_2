class Datapest < ApplicationRecord
    has_rich_text :body
    belongs_to :plantecopest
end
