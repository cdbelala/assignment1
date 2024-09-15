class PhoneBook
    def initialize
        @phonebook = {}
    end

    def add(name, number, is_listed)
        @phonebook[name] = {phoneNum: number, listed: is_listed}
    end

    def lookup(name)
        lookup = @phonebook[name]
        return nil unless lookup
        "Name: #{lookup[:name]} | Phone Number: #{lookup[:phoneNum]} | Listed: #{lookup[:listed]}"
        return lookup.phoneNum
    end

    def lookupByNum(number)
        @phonebook.each do |name, lookup|
            return name if lookup[:phoneNum] == number
        end
        return nil
    end

    def namesByAc(areacode)
        matches = []
        @phonebook.each do |name, lookup|
            if lookup[:phoneNum] && lookup[:phoneNum].start_with?(areacode)
                matches << name
            end
        end
        return matches
    end
end
  @phonebook = PhoneBook.new

@phonebook.lookup("John")
