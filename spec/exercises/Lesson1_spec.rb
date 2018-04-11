require './exercises/Lesson1'

RSpec.describe Lesson1 do
  context 'example1' do
    it { expect(Lesson1.new.solution(1041)).to eq 5 }
  end

  context "example2" do
  it { expect(Lesson1.new.solution(15)).to eq 0 }
  end

  context "extremes" do
    it { expect(Lesson1.new.solution(1)).to eq 0 }
    it { expect(Lesson1.new.solution(5)).to eq 1 }
    it { expect(Lesson1.new.solution(2_147_483_647)).to eq 0 }
  end

  context "trailing_zeroes" do
    it { expect(Lesson1.new.solution(6)).to eq 0 }
    it { expect(Lesson1.new.solution(328)).to eq 2 }
  end

  context "power_of_2" do
    it { expect(Lesson1.new.solution(16)).to eq 0 }
    it { expect(Lesson1.new.solution(1024)).to eq 0 }
  end

  context "simple1" do
    it { expect(Lesson1.new.solution(9)).to eq 2 }
    it { expect(Lesson1.new.solution(11)).to eq 1 }
  end

  context "simple2" do
    it { expect(Lesson1.new.solution(19)).to eq 2 }
    it { expect(Lesson1.new.solution(42)).to eq 1 }
  end

  context "simple3" do
    it { expect(Lesson1.new.solution(1162)).to eq 3 }
    it { expect(Lesson1.new.solution(5)).to eq 1 }
  end

  context "medium1" do
    it { expect(Lesson1.new.solution(51_712)).to eq 2 }
    it { expect(Lesson1.new.solution(20)).to eq 1 }
  end

  context "medium2" do
    it { expect(Lesson1.new.solution(561_892)).to eq 3 }
    it { expect(Lesson1.new.solution(9)).to eq 2 }
  end

  context "medium3" do
    it { expect(Lesson1.new.solution(66_561)).to eq 9 }
  end

  context "large1" do
    it { expect(Lesson1.new.solution(6_291_457)).to eq 20 }
  end

  context "large2" do
    it { expect(Lesson1.new.solution(74901729)).to eq 4 }
  end

  context "large3" do
    it { expect(Lesson1.new.solution(805_306_369)).to eq 27 }
  end

  context "large4" do
    it { expect(Lesson1.new.solution(1_376_796_946)).to eq 5 }
  end

  context "large5" do
    it { expect(Lesson1.new.solution(1_073_741_825)).to eq 29 }
  end

  context "large6" do
    it { expect(Lesson1.new.solution(1610612737)).to eq 28 }
  end
end
