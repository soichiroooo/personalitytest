class TestsController < ApplicationController
  before_action :authenticate_user!, only: [:analysis]

  def index
  end

  def new
    @test = Test.new
    @user = User.find_by(id: session[:user_id]) || User.new
  end

  def show
    @test = if user_signed_in?

              Test.find(params[:format])
            else
              Test.new(session[:test])
            end
  end

  def create
    if user_signed_in?
      @test = Test.new(test_params)
      @user = User.find(current_user.id)
      if @test.valid?
        judge_color
        @user.color_id = @test.color_id
        @user.save
        @test.save
        redirect_to tests_path(@test.id)
      else
        render :new
      end
    else
      session[:test] = Test.new(test_params_session)
      session[:user] = User.new
      if session[:test].valid?
        judge_color_session
        session[:user].color_id = session[:test].color_id
        redirect_to tests_path
      else
        render :new
      end
    end
  end

  def analysis
    @users = User.all
    @r_users = User.where(color_id: '1')
    @y_users = User.where(color_id: '2')
    @b_users = User.where(color_id: '3')
    @g_users = User.where(color_id: '4')
  end

  private

  def test_params
    params.require(:test).permit(:item1, :item2, :item3, :item4, :item5, :item6, :item7, :item8, :item9, :item10,
                                 :item11, :item12, :item13, :item14, :item15, :item16, :item17, :item18, :item19, :item20,
                                 :item21, :item22, :item23, :item24, :item25, :item26, :item27, :item28, :item29, :item30,
                                 :item31, :item32, :item33, :item34, :item35, :item36, :item37, :item38, :item39, :item40,
                                 :item41, :item42, :item43, :item44, :item45, :item46, :item47, :item48, :item49, :item50,
                                 :item51, :item52, :item53, :item54, :item55, :item56).merge(user_id: current_user.id)
  end

  def test_params_session
    params.require(:test).permit(:item1, :item2, :item3, :item4, :item5, :item6, :item7, :item8, :item9, :item10,
                                 :item11, :item12, :item13, :item14, :item15, :item16, :item17, :item18, :item19, :item20,
                                 :item21, :item22, :item23, :item24, :item25, :item26, :item27, :item28, :item29, :item30,
                                 :item31, :item32, :item33, :item34, :item35, :item36, :item37, :item38, :item39, :item40,
                                 :item41, :item42, :item43, :item44, :item45, :item46, :item47, :item48, :item49, :item50,
                                 :item51, :item52, :item53, :item54, :item55, :item56)
  end

  def judge_color
    @test.r_score =  @test.item3 +  @test.item7 +  @test.item9 + @test.item14 +
                     @test.item20 +  @test.item21 +  @test.item25 + @test.item32 +
                     @test.item36 +  @test.item38 +  @test.item41 + @test.item50 +
                     @test.item51 +  @test.item56

    @test.y_score =  @test.item2 +  @test.item5 +  @test.item12 + @test.item13 +
                     @test.item17 +  @test.item23 +  @test.item28 + @test.item31 +
                     @test.item34 +  @test.item42 +  @test.item44 + @test.item49 +
                     @test.item52 +  @test.item55

    @test.b_score =  @test.item1 +  @test.item6 +  @test.item11 + @test.item15 +
                     @test.item19 +  @test.item22 +  @test.item27 + @test.item30 +
                     @test.item33 +  @test.item37 +  @test.item40 + @test.item46 +
                     @test.item48 +  @test.item53

    @test.g_score =  @test.item4 +  @test.item8 +  @test.item10 + @test.item16 +
                     @test.item18 +  @test.item24 +  @test.item26 + @test.item29 +
                     @test.item35 +  @test.item39 +  @test.item43 + @test.item45 +
                     @test.item47 +  @test.item54

    @colors = [@test.r_score, @test.y_score, @test.b_score, @test.g_score]
    case @colors.max
    when @test.r_score
      @test.color_id = 1
    when @test.y_score
      @test.color_id = 2
    when @test.b_score
      @test.color_id = 3
    when @test.g_score
      @test.color_id = 4
    end
  end

  def judge_color_session
    session[:test][:r_score] = session[:test][:item3] + session[:test][:item7] + session[:test][:item9] + session[:test][:item14] +
                               session[:test][:item20] + session[:test][:item21] + session[:test][:item25] + session[:test][:item32] +
                               session[:test][:item36] + session[:test][:item38] + session[:test][:item41] + session[:test][:item50] +
                               session[:test][:item51] + session[:test][:item56]

    session[:test][:y_score] = session[:test][:item2] + session[:test][:item5] + session[:test][:item12] + session[:test][:item13] +
                               session[:test][:item17] + session[:test][:item23] + session[:test][:item28] + session[:test][:item31] +
                               session[:test][:item34] + session[:test][:item42] + session[:test][:item44] + session[:test][:item49] +
                               session[:test][:item52] + session[:test][:item55]

    session[:test][:b_score] = session[:test][:item1] + session[:test][:item6] + session[:test][:item11] + session[:test][:item15] +
                               session[:test][:item19] + session[:test][:item22] + session[:test][:item27] + session[:test][:item30] +
                               session[:test][:item33] + session[:test][:item37] + session[:test][:item40] + session[:test][:item46] +
                               session[:test][:item48] + session[:test][:item53]

    session[:test][:g_score] = session[:test][:item4] + session[:test][:item8] + session[:test][:item10] + session[:test][:item16] +
                               session[:test][:item18] + session[:test][:item24] + session[:test][:item26] + session[:test][:item29] +
                               session[:test][:item35] + session[:test][:item39] + session[:test][:item43] + session[:test][:item45] +
                               session[:test][:item47] + session[:test][:item54]

    @colors = [session[:test][:r_score], session[:test][:y_score], session[:test][:b_score], session[:test][:g_score]]
    case @colors.max
    when session[:test][:r_score]
      session[:test][:color_id] = 1
    when session[:test][:y_score]
      session[:test][:color_id] = 2
    when session[:test][:b_score]
      session[:test][:color_id] = 3
    when session[:test][:g_score]
      session[:test][:color_id] = 4
    end
  end
end
