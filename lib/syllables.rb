#!/usr/bin/ruby

# file: syllables.rb
# original code: http://stackoverflow.com/questions/1271918/ruby-count-syllables

Tokenizer = /([aeiouy]{1,3})/

class Syllables

  def initialize(text)
    super()
    @words = text.gsub(/\W+/, ' ').split\
      .inject({}) {|r,word| r.merge({word.to_sym => count_syllables(word)})}
  end

  def to_h
    @words
  end

  private

  def count_syllables(word)

    len = 0

    ending_matched = word[/(ing|io)$/]
    if ending_matched then
      len += 1
      word = word[0..-(ending_matched.length)]
    end

    got = word.scan(Tokenizer)
    len += got.size()

    if got.size() > 1 and got[-1] == ['e'] and
        word[-1].chr() == 'e' and
        word[-2].chr() != 'l' then
      len -= 1
    end

    return len

  end
end
