
=begin
CARD SUITS==========================
name    |  symbol   |  precedence
---------------------------------
club          c            0
diamond       d            1
heart         h            2
spade         s            3
====================================

52 CARD DECK
---------------------------------------
 0: A      13: A      26: A      39: A
 1: 2      14: 2      27: 2      40: 2
 2: 3      15: 3      28: 3      41: 3
 3: 4      16: 4      29: 4      42: 4
 4: 5      17: 5      30: 5      43: 5
 5: 6      18: 6      31: 6      44: 6
 6: 7      19: 7      32: 7      45: 7
 7: 8      20: 8      33: 8      46: 8
 8: 9      21: 9      34: 9      47: 9
 9: T      22: T      35: T      48: T
10: J      23: J      36: J      49: J
11: Q      24: Q      37: Q      50: Q
12: K      25: K      38: K      51: K

=end
# Hashes for each suit
$C_hash = { 0 => 'A',
           1 => '2', 
           2 => '3', 
           3 => '4', 
           4 => '5', 
           5 => '6', 
           6 => '7', 
           7 => '8', 
           8 => '9', 
           9 => 'T', 
          10 => 'J', 
          11 => 'Q', 
          12 => 'K'}
$D_hash = {13 => 'A',
          14 => '2', 
          15 => '3', 
          16 => '4', 
          17 => '5', 
          18 => '6', 
          19 => '7', 
          20 => '8', 
          21 => '9', 
          22 => 'T', 
          23 => 'J', 
          24 => 'Q', 
          25 => 'K'}
$H_hash = {26 => 'A',
          27 => '2',
          28 => '3',
          29 => '4',
          30 => '5',
          31 => '6',
          32 => '7',
          33 => '8',
          34 => '9',
          35 => 'T',
          36 => 'J',
          37 => 'Q',
          38 => 'K'}
$S_hash = {39 => 'A',
          40 => '2',
          41 => '3',
          42 => '4',
          43 => '5',
          44 => '6',
          45 => '7',
          46 => '8',
          47 => '9',
          48 => 'T',
          49 => 'J',
          50 => 'Q',
          51 => 'K'}
# Encodes the input array, then sorts the values
def encode(input_arr)
  #Sanity Check
  if input_arr.nil? || input_arr.class != Array
    return nil
  elsif input_arr.length == 0
    return input_arr
  end

  suit = ""
  value_arr = []
  input_arr.each do |card|
    value = card[0]
    suit  = card[1]
    value_arr << value_lookup(suit,value)
  end
  return value_arr.sort
end

# Sorts the input array first, before decoding
def decode(input_arr)
  #Sanity Check
  if input_arr.nil? || input_arr.class != Array
    return nil
  elsif input_arr.length == 0
    return input_arr 
  end

  input_arr.sort!
  result_arr = []
  input_arr.each do |value|
    case value
    when 0..12
      result_arr << $C_hash[value].to_s + 'c'
    when 13..25
      result_arr << $D_hash[value].to_s + 'd'
    when 26..38
      result_arr << $H_hash[value].to_s + 'h'
    when 39..51
      result_arr << $S_hash[value].to_s + 's'
    end
  end
  return result_arr
end

def value_lookup(suit,value)
    case suit
    when 'c'
     return $C_hash.invert[value] 
    when 'd'
     return $D_hash.invert[value] 
    when 'h'
     return $H_hash.invert[value] 
    when 's'
     return $S_hash.invert[value] 
    end
end
# Inputs and outputs
#['Ac', 'Ks', '5h', 'Td', '3c'] -> [0, 2 ,22, 30, 51] //encoding
#[0, 51, 30, 22, 2] -> ['Ac', '3c', 'Td', '5h', 'Ks'] //decoding

puts value_lookup('d','A')   
puts value_lookup('d','9')   

encode_arr = ['Ac', 'Ks', '5h', 'Td', '3c']
decode_arr = [0, 51, 30, 22, 2]
puts ""
print "Encode arr: " + encode_arr.to_s
puts ""
print encode(encode_arr)
puts ""
print "Decode arr: " + decode_arr.to_s
puts ""
print decode(decode_arr)
puts ""
 

