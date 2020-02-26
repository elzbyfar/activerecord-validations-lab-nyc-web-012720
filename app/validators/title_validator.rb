class TitleValidator < ActiveModel::Validator

    def validate(record)
        
        valid = false
        click_baits = ["Won't Believe", "Secret", "Top 10", "Guess"]
        click_baits.each do |phrase|
            if record.title != nil && record.title.include?(phrase)
                valid = true
            end
        end  

        if valid == false
            record.errors[:title] << "Must be clickbait"
        end 
    end 
end 
