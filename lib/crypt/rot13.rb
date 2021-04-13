# frozen_string_literal: true

# The Crypt module serves as a namespace only.
module Crypt
  # The Rot13 class encapsulates methods governing character rotation.
  class Rot13 < String
    # The Rot13::Error class is raised if an illegal rotation value is used.
    class Error < ArgumentError; end

    # The version of the crypt-rot13 library.
    VERSION = '1.2.0'

    # Returns a new Rot13 object. The object is a string with the letters
    # each rotated by +degree+.
    #
    # You cannot use a multiple of 26 as the degree or a Rot13::Error will
    # be raised. So, your days of double rot13 encryption are over.
    #
    def initialize(str = '', degree = 13)
      str = rotate_string(str, degree) unless str.empty?
      super(str)
    end

    # Rotates the Crypt::Rot13 object by +degree+.
    #
    def rotate(degree)
      rotate_string(self, degree)
    end

    private

    def rotate_string(str, degree)
      case degree.modulo(26)
      when 0
        raise Error, 'degree must not be a multiple of 26'
      when 13
        str = str.tr('a-zA-Z', 'n-za-mN-ZA-M')
      else
        str = str.unpack('C' * str.length).map! do |e|
          if e >= 97 && e <= 122
            ((e - 97 + degree) % 26) + 97
          elsif e >= 65 && e <= 90
            ((e - 65 + degree) % 26) + 65
          else
            e
          end
        end.pack('C' * str.length)
      end

      str
    end
  end
end
