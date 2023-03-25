[![Ruby](https://github.com/djberg96/crypt-rot13/actions/workflows/ruby.yml/badge.svg)](https://github.com/djberg96/crypt-rot13/actions/workflows/ruby.yml)

## Description
A library for performing simple character rotation (i.e. Caesar Cipher)
encryption. There are many like it, but this one is mine.

## Installation
`gem install crypt-rot13`
   
## Synopsis
```ruby
require 'crypt/rot13'

str = Crypt::Rot13.new("Hello World", 3) # Caesar cipher
puts str # "Khoor Zruog"
```

## Notes
Not unicode friendly. Only works on ASCII values 65-90 and 97-122. Other
characters will effectively be ignored, i.e. remain the same.

See http://en.wikipedia.org/wiki/ROT13 for more on ROT13

## Acknowledgements
Thanks go to Gaius Julius Caesar (d. 44 BC) for creating one of the first,
and most simple, encryption schemes. Hail Caesar!

## Known Bugs
None that I'm aware of. Please log any bugs you find on the project page at:

https://github.com/djberg96/crypt-rot13

## License
Apache-2.0

## Copyright
(C) 2005-2023, Daniel J. Berger, All Rights Reserved

## Warranty
This package is provided "as is" and without any express or
implied warranties, including, without limitation, the implied
warranties of merchantability and fitness for a particular purpose.

## Author
Daniel J. Berger
