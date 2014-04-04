# Defines interactions with the keyboard. Implemented in the Region class.
#
module Rukuli
  module Typeable

    # Public: Types text as if it was being typed on the keyboard with an
    # optional key modifier
    #
    # text - String representing text to be typed on keyboard
    # modifier - (optional) Sikilu constant (defined in key_code.rb)
    # representing key to hold while typing text
    #
    # Examples
    #
    #   region.type("Hello World")
    #   region.type("s", Rukuli::KEY_CMD) # saves a file
    #
    # Returns nothing
    def type(text, modifier = 0)
      @java_obj.type(nil, text, modifier)
    end

    # Public: Press escape
    #
    # Returns nothing
    def escape()
        @java_obj.type(Sikuli::KEY_ESC)
    end

    # Public: Types text then presses the return/enter key on the keyboard
    #
    # text - String
    #
    # Returns nothing
    def enter(text)
      @java_obj.type(text + Rukuli::KEY_RETURN)
    end
  end
end
