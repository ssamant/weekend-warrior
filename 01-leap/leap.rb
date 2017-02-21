# def leap_year? year
#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 == 0
#         true
#       else
#         false
#       end
#     else
#       true
#     end
#   else
#     false
#   end
# end

def leap_year? year
  return ( year % 4 == 0  && ( year % 100 != 0 || year % 400 == 0))
end
