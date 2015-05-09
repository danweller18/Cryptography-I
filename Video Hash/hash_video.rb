require 'digest'
require 'hex_string'

#initialize file
#test file
#file = File.open("6 - 2 - Generic birthday attack (16 min).mp4", "r")
file = File.open("6 - 1 - Introduction (11 min).mp4", "r")

#set file size
fsize = file.size

#set array size
if fsize % 1024 != 0
  asize = (fsize/1024) + 1
end

#byte array holding all of bytes from file
bytearray = []
#for i in 1...asize
for i in (asize).downto(0)
  j = file.read(1024)
  bytearray.push(j)
end

hasharray = []
for i in (asize).downto(1)
  curbytes = bytearray[i-1]
  #puts "hash size: #{hash.size}"

  if curbytes.size < 1024
    #puts "First hash number: #{i}"
    j = Digest::SHA256.digest curbytes
    nhash = j
    hasharray.push(j)
  else
    #puts "hash number: #{i}"
    j = curbytes << nhash
    hash = Digest::SHA256.digest j
    nhash = hash
    hasharray.push(hash)
  end
end

puts hasharray[12201].to_hex_string(false)

puts "array size: #{asize}"

#print out the hashfile for entire
puts "Total bytes: #{Digest::SHA256.hexdigest file.read}"

#filesize
puts "Filesize: #{fsize}"
