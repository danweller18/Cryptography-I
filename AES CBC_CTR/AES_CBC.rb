require 'openssl'
require 'hex_string'

#Questions 1+2 CBC key
cbckey = "140b41b22a29beb4061bda66b6747e14"
#Question1 AES with CBC
ciphertext1 = "4ca00ff4c898d61e1edbf1800618fb2828a226d160dad07883d04e008a7897ee\
2e4b7465d5290d0c0e6c6822236e1daafb94ffe0c5da05d9476be028ad7c1d81"
#Question2 AES with CBC
ciphertext2 = "5b68629feb8606f9a6667670b75b38a5b4832d0f26e1ab7da33249de7d4afc48\
e713ac646ace36e872ad5fb8a512428a6e21364b0c374df45503473c5242a253"
#Questions 3+4 CTR key
ctrkey = "36f18357be4dbd77f050515c73fcf9f2"
#Question3
ciphertext3 = "69dda8455c7dd4254bf353b773304eec0ec7702330098ce7f7520d1cbbb20fc3\
88d1b0adb5054dbd7370849dbf0b88d393f252e764f1f5f7ad97ef79d59ce29f5f51eeca32eabedd9afa9329"
#Question4
ciphertext4 = "770b80259ec33beb2561358a9f2dc617e46218c0a53cbeca695ae45faa8952aa\
0e311bde9d4e01726d3184c34451"

#set up CBC cipher
cipher1 = OpenSSL::Cipher.new('AES-128-CBC')
#set cipher to decrypt mode
cipher1.decrypt

#convert hex to byte_string
cbckey = cbckey.to_byte_string
#setting key
cipher1.key = cbckey

#random IV
iv = cipher1.random_iv
cipher1.iv = iv

#convert hex to byte_string
ciphertext1 = ciphertext1.to_byte_string
#decrypt to plaintext
plain = cipher1.update(ciphertext1) + cipher1.final

#remove extra padding
plain = plain.byteslice(16,128)

#printout Question1 plaintext
puts "plaintext of Q1: #{plain}"

#convert hex to byte_string
ciphertext2 = ciphertext2.to_byte_string
#decrypt to plaintext
plain = cipher1.update(ciphertext2) + cipher1.final

#remove extra padding
plain = plain.byteslice(32,128)

#printout Question2 plaintext--ignore padding
puts "plaintext of Q2: #{plain}"


#set up CTR cipher
cipher2 = OpenSSL::Cipher.new('AES-128-CTR')
#set cipher to decrypt mode
cipher2.decrypt

#convert hex to byte_string
ctrkey = ctrkey.to_byte_string
#setting key
cipher2.key = ctrkey

#convert hex to byte_string
ciphertext3 = ciphertext3.to_byte_string

#random IV
iv3 = ciphertext3.byteslice(0,16)
cipher2.iv = iv3

#append new ciphertext
ciphertext3 = ciphertext3.byteslice(16,128)

#decrypt to plaintext
plain = cipher2.update(ciphertext3) + cipher2.final

#printout Question3 plaintext--ignore padding
puts "plaintext of Q3: #{plain}"

#convert hex to byte_string
ciphertext4 = ciphertext4.to_byte_string

#random IV
iv4 = ciphertext4.byteslice(0,16)
cipher2.iv = iv4

#append new ciphertext
ciphertext4 = ciphertext4.byteslice(16,128)

#decrypt to plaintext
plain = cipher2.update(ciphertext4) + cipher2.final
#printout Question4 plaintext--ignore padding
puts "plaintext of Q4: #{plain}"
