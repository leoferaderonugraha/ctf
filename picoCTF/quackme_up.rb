chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPRSTUVWXYZ1234567890_{}"
enc_chars = "00 30 20 50 40 70 60 90 80 B0 A0 D0 C0 F0 E0 11 01 "\
"31 21 51 41 71 61 91 81 B1 02 32 22 52 42 72 62 "\
"92 82 B2 A2 D2 C2 F2 E2 13 33 23 53 43 73 63 93 "\
"83 B3 05 35 25 55 45 75 65 95 85 15 E3 A1 C1".split

flag = '11 80 20 E0 22 53 72 A1 01 41 55 20 A0 C0 25 E3 35 40 55 30 85 55 70 20 C1'.split

hash = {}
(0...chars.size).each{|i|
  hash[enc_chars[i]] = chars[i]
}

arr = []

(0...flag.size).each{|x|
  arr << hash[flag[x]]
}

print arr.join('')
