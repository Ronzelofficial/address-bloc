require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def delete_entry(name,phone_number, email)
    deleted = nil

    @entries.each do |entry|
      if name == entry.name && phone_number==entry.phone_number && email==entry.email
        deleted = entry
      end
    end
      @entries.delete(deleted)
  end

  def add_entry(name, phone_number, email)
       # #9
       index = 0
       entries.each do |entry|
       # #10
         if name < entry.name
           break
         end
         index+= 1
       end
       # #11
       entries.insert(index, Entry.new(name, phone_number, email))
     end
   end
