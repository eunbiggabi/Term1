# class for User Inferface used to store methods for displaying application features
class UserInterface 
    
    @@user = ""
    @@company = ""
    @@industry = ""
    @@total_employees = 0

    # method for creating company when initialising application- currently hardcoded for convenience
    def self.create_company()
        print "Company Name: "
        @@company = "Coder Academy"#gets.chomp.to_s
        print "Industry: "
        @@industry = "Education" #gets.chomp.to_s
        print "No. of Employees: "
        @@total_employees += 15#gets.chomp.to_i
        print "Your Name: "
        @@user = "Caleb"#gets.chomp.to_s
    end

    # method for displaying company information as the header display 
    def self.header()
        system("clear")
        puts "------ terminal" + "HRM".colorize(:green) + " -------\n\n"
        puts "Welcome, #{@@user}\n\n"
        puts "Company Name:     #{@@company}"
        puts "Industry:         #{@@industry}"
        puts "Employee count:   #{@@total_employees}" 
    end

end