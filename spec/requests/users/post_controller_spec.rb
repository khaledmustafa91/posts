# frozen_string_literal: true
require "rails_helper"

RSpec.describe(Users::PostsController, type: :request) do
  let(:post) { create(:post) }
  let(:post_attributes) { attributes_for(:post) }

  describe "GET #index" do
    context "when fetch posts" do
      before do
        post
      end

      it "returns posts" do
        get("/users/posts", params: { user_id: post.user_id })
        expect(response.status).to(eq(200))
      end
    end
  end

  describe "GET #create" do
    context "when create a post" do
      it "posts table will increased by 1" do
        expect do
          post("/users/posts", params: { post: post_attributes })
        end.to(change(Post, :count).by(1))
      end
    end
  end
end
