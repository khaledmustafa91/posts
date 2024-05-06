# frozen_string_literal: true

require "rails_helper"

RSpec.describe(Post, type: :model) do
  let(:subject) { build(:post) }

  describe "#validations" do
    it "is valid with valid attributes" do
      expect(subject).to(be_valid)
    end
  end
end
