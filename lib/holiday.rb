require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].collect do |holiday, thing|
thing << supply
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring].collect {|hol,sup| sup << supply }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
holiday_hash.each do |seas, hol|
	hol.each do |h, sup|
		sup.each do |s|
		supplies << s
		end
	end
end
return supplies
end
  holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
  }

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    capital_city = "#{season}:"
    puts capital_city.capitalize

    holidays.each do |holidays, supplies|
      message = "  "
      formatted = []

      if "#{holidays}".include?("_") == true
      formatted = "#{holidays}".split("_")
          okay = formatted.collect do |x|
          x.capitalize
          end # each = formatted collect block

          a = 1
          okay.each do |word|
          message << word
          if a != okay.length
            message << " "
          end # end if statement
          a +=1
        end # end okay each block
      else
        message << "#{holidays}".capitalize
      end # if / else

      message << ": "

      i = 1
      supplies.each do |value|
          if (i == supplies.length)
            message << value
          else
            message << value + ", "
          end
          i += 1
      end # supplies each
      puts message
    end #holidays each

  end #holiday hash each
end #method
  # iterate through holiday_hash and print items such that your readout resembles:
    #Winter:
  #    Chirstmas th
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq_holidays_array = []

holiday_hash.each do |season, holidays|

  holidays.each do |holiday, material|
    bbq_holiday = false
    material.each do |mat|
      if mat == "BBQ"
        bbq_holiday = true
      end
    end #materails each
    if bbq_holiday == true
      bbq_holidays_array << holiday
    end
  end #holidays each


end #holiday hash each

return bbq_holidays_array

end
