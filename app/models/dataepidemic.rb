class Dataepidemic < ApplicationRecord
    has_rich_text :body
    belongs_to :plantecoepidemic
end
