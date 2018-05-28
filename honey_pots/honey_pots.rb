#  Winnie the Pooh's Honey Problem
#  You have 100 jars of honey in a row that are all initially closed. You make 100 visits to the jars of honey.
#
#  The first time around, you visit every jar and toggle the lid (if the jar is closed,
#  you open it; if it is open, you close it).
#
#  The second time you only visit every 2nd jar of honey (jar #2, #4, #6, ...).
# The third time, every 3rd jar of honey (jar #3, #6, #9, ...), etc, until you only visit the 100th jar of honey.
#
# Question: Write a function that shows which jars of honey are open after Pooh's last pass?
#
#  after 100 visits the jars that have an odd number of factors, 1, 2 and itself, are visisted an odd number of times
#  and these will be left opened.
#  jars that have an even number of factors, 2, 3, 5 and itself are visited an even number of times and these will be closed
#
# jars 1,4,9,16,25,36,49,64,81,100 will be open, the rest are closed.

# array of 100 jars closed to start
# function where loop runs through 100 visits to each jar
# 1st visit opens all jars and maps to array
# 2nd visit adds 1 to the jar index to close every second jar
# 3rd visit close every 3rd jar
# repeat 2nd and 3rd jar visits opening when closing and closing when open
# add to array each open jar
# print open jar indexes


def which_jars_left_open
  jars_open = []

  100.times do
    jars_open << 0
  end

  for index in 0..99
    for multiplier in 1..100
      if (index + 1) % multiplier == 0
        if jars_open[index] == 0
          jars_open[index] = 1
        else
          jars_open[index] = 0
        end
      end
    end
  end
  return jars_open

end
which_jars_left_open()


# honey_jars = (1..100).to_a
# jars_open = []

# 1.upto 100 do |trip|
#     honey_jars.each do |honey_jars|
#         if honey_jar % trip == 0
#             if jars_open.include? honey_jar
#                 jars_open.delete honey_jar
#             else
#                 jars_open.push honey_jar
#             end
#         end
#     end
# end
# print jars_open
