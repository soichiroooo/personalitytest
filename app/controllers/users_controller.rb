class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @test = Test.find(User.find(current_user.id).test_id) || nil
  end
end
