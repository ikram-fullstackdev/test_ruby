require 'rspec'
require './words_test.rb'

RSpec.describe 'Sequence Tester' do
  let(:dictionary_file) { './test/test_dictionary.txt' }
  let(:sequences_file) { './test/test_sequences.txt' }
  let(:words_file) { './test/test_words.txt' }
  let(:sequence_length) {4}
  let(:expected_sequences) {
    {
      "arro" => ["arrows", "carrots"],
      "carr" => ["carrots"],
      "give" => ["give"],
      "rots" => ["carrots"],
      "rows" => ["arrows"],
      "rrot" => ["carrots"],
      "rrow" => ["arrows"]
    }
  }

  describe '#create_word_sequences' do
    it 'generates correct sequences' do
      sequences = create_word_sequences(dictionary_file, sequence_length)
      expect(sequences).to eq(expected_sequences)
    end
  end

  describe '#create_output_files' do
    it 'generates correct sequences file' do
      expected_sequences_file_contents = "carr\ngive\nrots\nrows\nrrot\nrrow\n"

      create_output_files(expected_sequences, sequences_file, words_file)

      expect(File.read(sequences_file)).to eq(expected_sequences_file_contents)
    end

    it 'generates correct words file' do
      expected_words_file_contents = "Carrots\nGive\nCarrots\nArrows\nCarrots\nArrows\n"

      create_output_files(expected_sequences, sequences_file, words_file)

      expect(File.read(words_file)).to eq(expected_words_file_contents)
    end
  end
end
