require "irb_affirmations/version"


module IrbAffirmations
  module PromptReturn
    AFFIRMATIONS = %{You are worthy and deserving of beauty and well being in my life.
You love what you do and you do what you love.
You are connected to the source energy which provides within you the divine abilities to make very successful personal, financial and professional decisions.
You are articulate and you have excellent communication skills.
You communicate in a persuasive, charming and charismatic manner.}.lines

    def self.write(results)
      puts results
      puts AFFIRMATIONS.sample
    end
  end
end


IRB.conf[:PROMPT][:AFFIRMATIONS] = IRB.conf[:PROMPT][:DEFAULT].merge({RETURN: IrbAffirmations::PromptReturn})
IRB.conf[:PROMPT_MODE] = :AFFIRMATIONS
