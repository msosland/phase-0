#  5.6 Accountability Groups Challenge

Release 1 Pseudocode
1. create a list to represent people in our cohort
2. randomly select 4 or 5 elements to remove and place in new array
3. add new array to larger container array
4. if there are 1 2 or 3 elements left over, add them to arrays that have 4 elements only
5. add all new arrays to larger container array
6. for every small array in container array, add it as a value to a hash key with the acct group name and number

#Initial Solution
list = (1..65).to_a
def create_groups(list)
  new_array = []
  while true
    group = []
    rand(4..5).times do

end


