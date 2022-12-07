class TestsController < ApplicationController
  def new
  end

  def create
    @test = Test.new
    if @test.valid?
      @test.save
    else
      render :new
    end
  end
end
