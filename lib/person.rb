# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif
            happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0 
    end
        # happiness < 10 ? @happiness = happiness : @happiness = 10
        # happiness > 0 ? @happiness = happiness : @happiness = 0
        # "nested ternary" happiness < 10 ? (happiness > 0 ? @happiness = happiness : @happiness = 0) : happiness = 10
        # new way --- funny if
        # @happiness = happiness
        # @happiness = 10 if @happiness > 10
        # @happiness = 0 if @happiness < 0
        #  new way Grants method
        # @happiness = [num, 0, 10].sort[1]



    def happy?
        if happiness > 7
            return true 
        else
            return false
        end
    end
    def clean?
        if hygiene > 7
            return true 
        else
            return false
        end
    end

    def get_paid(salary)
        # @bank_account += salary
        self.bank_account += salary
        return "all about the benjamins"
    end
        
    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def call_friend(person)
        [person, self].each {|obj| obj.happiness += 3 }
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def start_conversation(person, topic)
        array = [self, person]
        if topic == "politics"
            array.each {|obj| obj.happiness -= 2}
            first_w, second_w = ["partisan", "lobbyist"]
        elsif topic == "weather"
            array.each {|obj| obj.happiness += 1}
            first_w, second_w = ["sun", "rain"]
        end
        first_w ||= "blah"
        second_w ||= "blah"

        "blah blah #{first_w} blah #{second_w}"
        end
end