#Many Time Pad for use with ruby's IRB

This program can help you find the plaintext of two ciphertexts that
were created using the same one time key.

##How to use the code

###Step 1
The code in mtp.rb should be copied and pasted in the irb.

###Step 2
Enter your ciphertext into variables.
```ruby
2.2.0 :042 > ciphertext1 =
"315c4eeaa8b5f8aaf9174145bf43e1784b8fa00dc71d885a804e5ee9fa40b16349c146fb778cdf2d3aff021dfff5b403b510d0d0455468aeb98622b137dae857553ccd8883a7bc37520e06e515d22c954eba5025b8cc57ee59418ce7dc6bc41556bdb36bbca3e8774301fbcaa3b83b220809560987815f65286764703de0f3d524400a19b159610b11ef3e".from_hex
 =>
"1\\N\xEA\xA8\xB5\xF8\xAA\xF9\x17AE\xBFC\xE1xK\x8F\xA0\r\xC7\x1D\x88Z\x80N^\xE9\xFA@\xB1cI\xC1F\xFBw\x8C\xDF-:\xFF\x02\x1D\xFF\xF5\xB4\x03\xB5\x10\xD0\xD0ETh\xAE\xB9\x86\"\xB17\xDA\xE8WU<\xCD\x88\x83\xA7\xBC7R\x0E\x06\xE5\x15\xD2,\x95N\xBAP%\xB8\xCCW\xEEYA\x8C\xE7\xDCk\xC4\x15V\xBD\xB3k\xBC\xA3\xE8wC\x01\xFB\xCA\xA3\xB8;\"\b\tV\t\x87\x81_e(gdp=\xE0\xF3\xD5$@\n\x19\xB1Ya\v\x11\xEF>"
2.2.0 :043 > ciphertext2 =
"234c02ecbbfbafa3ed18510abd11fa724fcda2018a1a8342cf064bbde548b12b07df44ba7191d9606ef4081ffde5ad46a5069d9f7f543bedb9c861bf29c7e205132eda9382b0bc2c5c4b45f919cf3a9f1cb74151f6d551f4480c82b2cb24cc5b028aa76eb7b4ab24171ab3cdadb8356f".from_hex
 =>
"#L\x02\xEC\xBB\xFB\xAF\xA3\xED\x18Q\n\xBD\x11\xFArO\xCD\xA2\x01\x8A\x1A\x83B\xCF\x06K\xBD\xE5H\xB1+\a\xDFD\xBAq\x91\xD9`n\xF4\b\x1F\xFD\xE5\xADF\xA5\x06\x9D\x9F\x7FT;\xED\xB9\xC8a\xBF)\xC7\xE2\x05\x13.\xDA\x93\x82\xB0\xBC,\\KE\xF9\x19\xCF:\x9F\x1C\xB7AQ\xF6\xD5Q\xF4H\f\x82\xB2\xCB$\xCC[\x02\x8A\xA7n\xB7\xB4\xAB$\x17\x1A\xB3\xCD\xAD\xB85o"
2.2.0 :044 > xorctext1ctext2 = ciphertext1 ^ ciphertext2
 =>
"\x12\x10L\x06\x13NW\t\x14\x0F\x10O\x02R\e\n\x04B\x02\fM\a\v\x18OH\x15T\x1F\b\x00HN\x1E\x02A\x06\x1D\x06MT\v\n\x02\x02\x10\x19E\x10\x16MO:\x00SC\x00NC\x0E\x1E\x1D\nRF\x12\x17\e\x01\x17\x00\e\x0EEC\x1C\f\x1D\x16\nR\r\x11tN\x19\x06\x1A\x11M\x0EU\x17O\bNT7\x14\x05\v\x17CST\eH\a\x0E\x00\x0EM+ET\xE5<z\xF0\xC6\xC5\x7F5z\x80\xF1\t\xA7k\x8D\xA8\x18;C\xE2I\xDE\xE9u"
```

###Step 3
Use the cribdrag function to compare the XOR'd ciphertext with any string you would like. I am using the word " the " to start because it is a very common word.
```ruby
2.2.0 :045 > cribdrag(xorctext1ctext2, " the ")
0 : 2d$c3
1 : 08nvn
2 : lr{+w
3 : &g&2)
4 : 3:?l4
5 : n#aq/
6 : w}|j0
7 : )`guo
8 : 4{x*"
9 : /d'gr
10 : 0;j7;
11 : ov:~*
12 : "&so$
13 : robab
14 : ;~l'"
15 : *p*g,
16 : $6jim
17 : bvd('
18 : "x%b+
19 : ,9on8
20 : msc}o
21 : 'p*h
22 : +l'-5
23 : 8; pt
24 : o<}1?
25 : ha<z(
26 : 5 wm
27 : tk`eh
28 : ?|h-n
29 : (t +>
30 :  <&{"
31 : h:vga
32 : njj$&
33 : >v)c=
34 : "5nx&
35 : arucm
36 : &in(t
37 : =r%1+
38 : &9<n*
39 : m co"
40 : tbg"
41 : +~jg0
42 : *vju9
43 : "vx|e
44 : "dq 0
45 : 0m-u6
46 : 91xsm
47 : ed~(o
48 : 0b%*
49 : 69'_
50 : m;Res
51 : oNh6c
52 : t;&
53 :  '+en
54 : s7h+c
55 : ct&&.
56 :  :+k>
57 : n7f{=
58 : czvx*
59 : .juor
60 : >ib7f
61 : =~:#2
62 : *&.w7
63 : r2zr;
64 : ff~!
65 : 2csd7
66 : 7oir
67 : ;ue;
68 : !ch~.
69 : 7tske
70 :  of c
71 : ;z-&<
72 : .1+y,
73 : e7ti=
74 : chdx6
75 : <xus*
76 : ,i~or
77 : =bb7-
78 : 6~:h1
79 : *&etT
80 : ryyn
81 : -e+9
82 : 1&|&
83 : T:qc:
84 : nmn1
85 : 9rrtm
86 : &ny(.
87 : :e%ku
88 : 19f07
89 : mz=ro
90 : .!*(
91 : uc'mn
92 : 7;`+t
93 : o|&1
94 : (:<R4
95 : n _q%
96 : tC|`+
97 : `mn7
98 : 4qcrc
99 : %&s
100 : +c+6t
101 : 77;1;
102 : c'<~h
103 : s s-'
104 : to b.
105 : ;<ok
106 : hsfe.
107 : 'zhkm
108 : .tf(

109 :  z%Ne
110 : .9C t
111 : m_-1?
112 :
      1<?
113 : e ?YZ
114 : t?T?
115 : ?H??
116 : ???
117 : Z???_
118 : в?
119 : ?PZ
120 : ?
       ]?
121 : _A??
122 : ?)
123 : Z??l?
124 : ??a?K
125 : ?}??
126 : )??
127 : ???8
128 : K??}
29 : ??p^c
130 : ?lS&?
131 : 8O+?i
132 : ?,?
133 : c?!??
134 : ?=??U
135 : i??
136 : ??
137 : ?
138 : U
 => 139
```

If you look at line 13, you can see it is all letters. If we reverse the role looking for "robab", you will find the string " the " at line 12.

You can keep doing this looking for words that match until you find both full strings.

<h2>Credits: </h2> [OTP, Stream Ciphers, and Key Reuse](http://jarmoc.com/blog/2013/08/12/otp/)

Note*: I did not write this code.
