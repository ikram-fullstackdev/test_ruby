def create_word_sequences(dictionary_words, sequence_length)
  sequences = Hash.new { |hash, key| hash[key] = [] }

  File.foreach(dictionary_words) do |line|
    word = line.strip.downcase
    
    next if word.match?(/\d+/)
    next if word.match?(/[^\w\s]/)
    next if word.size < sequence_length
    
    (0..(word.length - sequence_length)).each do |index|
      sequence = word[index, sequence_length]
      sequences[sequence] << word
    end
  end
  sequences

end

def create_output_files(sequences, sequences_file, words_file)
  File.open(sequences_file, 'w') do |file|
    sequences.each do |sequence, words|
      file.puts sequence if words.size == 1
    end
  end

  File.open(words_file, 'w') do |file|
    sequences.each do |sequence, words|
      file.puts words.first.capitalize if words.size == 1
    end
  end
end

dictionary_words = 'dictionary_words.txt'
sequences_file = 'unique_sequences.txt'
words_file = 'words.txt'
sequence_length = 4

sequences = create_word_sequences(dictionary_words, sequence_length)
create_output_files(sequences, sequences_file, words_file)
