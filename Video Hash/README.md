#SHA256 hashing to check a video file

Takes the file and cuts it up into blocks the size of 1024bytes. Then it computes the hash value for the last block which might be less than 1024 bytes. It will append the hash value of the last block to block n-1 and then compute the hash of block n-1.

It will print out the hash of the first block, h0 which is the same as h1's hash appended to block0 to make up h0.
