module ApplicationHelper

    # Returns the full title on a per-page basis.           # Documentation comment
    def full_title(page_title = '')                         # Method def, optional arg
        base_title = "Ruby on Rails Tutorial Sample App"    # Variable assignment
        if page_title.empty?                                # Boolean test
            base_title                                      # Implicit return
        else
            page_title + " | " + base_title                 # String concatenation
        end
    end

    # Randomly generate a string and a dot and a end bit           
    def random_subdomain()
        
        randomsubdomain = ""
        
        # Create a string of between 3 and 8 characters 
        domain = ('a'..'z').to_a.shuffle[0..7].join

        # Create an array of some domains and randomly pick one 
        suffix = ('a'..'z').to_a.shuffle[0..1].join

        # Concatenate and return the string 
        randomsubdomain = domain + "." + suffix 

    end

    def hashing_function() 

        myhash = { :one => "Michael Hartl", :two => "michael@example.com" , :three => "123 Merry Lane" }

        base = ""

        myhash.each do |key, value|
            base = base + " " + key.inspect + " " + value.inspect
        end 

        base 

    end 

end
