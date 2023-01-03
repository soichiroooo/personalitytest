class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @test = Test.find_by(id: User.find(params[:id]).test_id)
    @user = User.find(params[:id])
  end
end
