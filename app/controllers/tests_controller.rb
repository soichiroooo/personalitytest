class TestsController < ApplicationController

  def index
  end

  def new
    @test = Test.new
  end

  def show
    @test = if user_signed_in?
              Test.find(User.find(current_user.id).test_id) || Test.new(session[:test])
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
        @test.save
        @user.test_id = @test.id
        @user.save
        redirect_to tests_path(@test.id)
      else
        flash.now[:alert] = 'メッセージを入力してください。'
        render :new
      end
    else
      @test = Test.new(test_params)
      session[:user] = current_user if user_signed_in?
                       User.new
      judge_color
      session[:test] = @test
      redirect_to tests_path
    end
  end

  def analysis
    @tests = Test.all
    @users = User.all
    @r_users = User.where(test_id: Test.where(color_id: '1').ids)
    @y_users = User.where(test_id: Test.where(color_id: '2').ids)
    @b_users = User.where(test_id: Test.where(color_id: '3').ids)
    @g_users = User.where(test_id: Test.where(color_id: '4').ids)
    @r_users_m = User.where(test_id: Test.where(color_id: '1').ids, gender: "男性")
    @y_users_m = User.where(test_id: Test.where(color_id: '2').ids, gender: "男性")
    @b_users_m = User.where(test_id: Test.where(color_id: '3').ids, gender: "男性")
    @g_users_m = User.where(test_id: Test.where(color_id: '4').ids, gender: "男性")
    @r_users_f = User.where(test_id: Test.where(color_id: '1').ids, gender: "女性")
    @y_users_f = User.where(test_id: Test.where(color_id: '2').ids, gender: "女性")
    @b_users_f = User.where(test_id: Test.where(color_id: '3').ids, gender: "女性")
    @g_users_f = User.where(test_id: Test.where(color_id: '4').ids, gender: "女性")

    user_arr = []
    @users.each do |user|
      if user.test_id
        r_score = @tests.find(user.attributes["test_id"]).attributes["r_score"]
        y_score = @tests.find(user.attributes["test_id"]).attributes["y_score"]
        b_score= @tests.find(user.attributes["test_id"]).attributes["b_score"]
        g_score= @tests.find(user.attributes["test_id"]).attributes["g_score"]
        if r_score > b_score
          y = r_score
        else
          y = -b_score
        end
        if y_score > g_score
          x = y_score
        else
          x = -g_score
        end
        user_hash = {}
        user_hash["id"] = user.id
        user_hash["x"] = x
        user_hash["y"] = y
        user_arr << user_hash
      end
    end
    users_arr = [0,1,2]
    users_hash = {id: 1,}
  end

  private

  def test_params
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
end
