require 'rails_helper'

RSpec.describe "Users", type: :request do
    describe "GET /users" do
        it "it returns success status code" do
            get "/users"
            expect(response).to have_http_status(:ok)
        end

        it "the user's title is present" do
            users = create_list(:user, 3)
            get "/users"
            users.each do |user|
                expect(response.body).to include(user.title)
            end
        end
    end

    describe "POST /users" do
        context "when it has valid parameters" do
            it "creates the user with the correct attributes" do
                user_attributes = FactoryBot.attributes_for(:user)
                post "/users", params: { user: user_attributes }
                last_user_created = User.last
                expect(last_user_created).to have_attributes(user_attributes)
            end
        end
        
        context "when it has invalid paremeters" do
            it "does not create the user" do
                expect {
                    post "/users", params: { user: { kind: '', nickname: '', level: '' } }
                }.to_not change(User, :count)
            end
        end        
    end
end