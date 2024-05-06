# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Review, type: :model) do
  let(:subject) { build(:review) }

  describe "#validations" do
    it "is valid with valid attributes" do
      expect(subject).to(be_valid)
    end

    it "is not valid without a comment" do
      subject.comment = nil
      expect(subject).to(be_invalid)
    end

    it "is not valid without a rate" do
      subject.rate = nil
      expect(subject).to(be_invalid)
    end
  end
end
