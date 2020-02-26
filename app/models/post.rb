class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with TitleValidator

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    # validate :clickbait?

    # BAITS = ["Won't Believe", "Secrets", "Top 10", "Guess"]


    # def clickbait?
    #     BAITS.each do |bait|
    #         if title.include?(bait) 
    #             errors.add(:title, "must be clickbait")
    #         end 
    #     end 
    # end 



end
