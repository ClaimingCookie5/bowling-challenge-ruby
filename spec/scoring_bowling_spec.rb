require 'scoring_bowling'

describe Scoring_Bowling do

  describe 'initialize' do

    it 'is expected to have 2 public attributes' do
      expect(subject).to have_attributes(:bowls => [], :frame => 0)
    end

  end

  describe '.add_roll' do

    it 'is expected to add the roll to rolls array' do
      subject.add_bowl(10, nil)
      expect(subject.bowls).to include(frame: 1, bowls: [10, nil])
    end

    it 'is expected to be able to take two bowls' do
      subject.add_bowl(10, 10)
      expect(subject.bowls).to include(frame: 1, bowls: [10, 10])
    end


  end

end