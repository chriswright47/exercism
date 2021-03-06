Scrabble = Struct.new(:word) do

  SCORES = {
    a: 1, b: 3, c: 3, d: 2, e: 1, f: 4, g: 2,
    h: 4, i: 1, j: 8, k: 5, l: 1, m: 3, n: 1,
    o: 1, p: 3, q: 10, r: 1, s: 1, t: 1, u: 1,
    v: 4, w: 4, x: 8, y: 4, z: 10
  }

  def score
    return 0 if empty?(word)
    letters = word.downcase.split('')
    letters.reduce(0) {|sum, letter| sum + SCORES[letter.to_sym] }
  end

  def self.score(word)
    self.new(word).score
  end

  private
    def empty?(input)
      !input || input.strip.empty?
    end
end