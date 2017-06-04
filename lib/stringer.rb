require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
        strings.each_with_index do |s, index|
            if index == strings.size - 1
                string += s
            else
                string += s + " "
            end
        end
        string
    end

    def self.minify text, max
        if text.length > max
            "#{text[0...max]}..." # 3 ... to get the last digit, printing to max of 10 s
        else
            return text
        end
    end

    def self.replacify text, a, b
        text.gsub! a, b
    end

    def self.tokenize sentence
        sentence.split((/\W+/))
    end

    def self.removify text, remove
        text = text.split(" ")
        text.reject! {|word| word == remove}
        text.join(" ")
    end
end
