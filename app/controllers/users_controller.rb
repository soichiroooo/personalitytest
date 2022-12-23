class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @test = Test.find(User.find(params[:id]).test_id) || nil
    @user = User.find(params[:id])
  end
end
