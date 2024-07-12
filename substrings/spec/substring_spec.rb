# frozen_string_literal: true

require_relative '../lib/substring'

describe Substring do
  subject(:substringer) { described_class.new(phrase, dictionary).counter }

  context 'with a large dictionary' do
    let(:dictionary) do
      %w[below down go going horn how howdy it i low own part partner sit]
    end

    context 'with a short phrase' do
      let(:phrase) { 'below' }

      it 'return the correct answer' do
        expect(substringer).to eql({ 'below' => 1, 'low' => 1 })
      end
    end

    context 'with a large phrase' do
      let(:phrase) { 'below me, below you, there is a partner. sit down, go, own.' }

      it 'return the correct answer' do
        expect(substringer).to eql(
          {
            'below' => 2, 'down' => 1, 'go' => 1, 'i' => 2,
            'it' => 1, 'low' => 2, 'own' => 2, 'part' => 1,
            'partner' => 1, 'sit' => 1
          }
        )
      end
    end
  end
end
