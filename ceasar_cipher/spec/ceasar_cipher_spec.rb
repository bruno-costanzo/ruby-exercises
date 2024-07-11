# frozen_string_literal: true

require_relative '../lib/ceasar_cipher'

describe CeasarCipher do
  subject(:ceasar_cipher) { described_class.new(message, shifter).translate }

  context 'with a complex message' do
    let(:message) { 'What a string!' }

    context 'with a small positive shifter' do
      let(:shifter) { 5 }

      it 'returns the correct value' do
        expect(ceasar_cipher).to eql('Bmfy f xywnsl!')
      end
    end

    context 'with a small negative shifter' do
      let(:shifter) { -3 }

      it 'returns the correct value' do
        expect(ceasar_cipher).to eql('Texq x pqofkd!')
      end
    end

    context 'whith a large positive shifter' do
      let(:shifter) { 75 }

      it 'returns the correct value' do
        expect(ceasar_cipher).to eql('Texq x pqofkd!')
      end
    end
  end
end
