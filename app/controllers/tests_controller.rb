class TestsController < ApplicationController
  def new
    @test = Test.new
  end

  def create
    # (1..56).each do |i|
    #   params["item#{i}"] = params["item#{i}"].to_i
    # end
    @test = Test.new(test_params)
    if @test.save
      redirect_to root_path
    else
      render :new
    end
  end

  def test_params
    params.require(:test).permit(:item1, :item2, :item3, :item4, :item5, :item6, :item7, :item8, :item9, :item10,
                                 :item11, :item12, :item13, :item14, :item15, :item16, :item17, :item18, :item19, :item20,
                                 :item21, :item22, :item23, :item24, :item25, :item26, :item27, :item28, :item29, :item30,
                                 :item31, :item32, :item33, :item34, :item35, :item36, :item37, :item38, :item39, :item40,
                                 :item41, :item42, :item43, :item44, :item45, :item46, :item47, :item48, :item49, :item50,
                                 :item51, :item52, :item53, :item54, :item55, :item56)
  end
end
