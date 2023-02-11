class Book < ApplicationRecord
            
        validates :name,:author,presence: true
        validates :name, uniqueness: true
        validates :name, length: {minimum: 2, message: "atleast 2 charcters are required"}
        validates :name, length: {maximum: 16, message: "maximum 16 charcters only"}
        before_save :merge_names
        after_destroy :update_log
        def merge_names
            self.name = self.name+" by "+self.author
        end
        def update_log
            logger.info"====================a book has been deleted from the #{name}================"
        end
    end
