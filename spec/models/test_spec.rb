require 'rails_helper'

RSpec.describe Test, type: :model do
  before do
    @test = FactoryBot.build(:test)
  end

  describe 'テスト機能' do
    context '診断結果を確認できる場合' do
      it '全て回答済みであれば確認できる' do
        expect(@test).to be_valid
      end
    end

    context '診断結果を確認できない場合' do
      it 'item1が空では登録できない' do
        @test.item1 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item1 can't be blank")
      end
      it 'item2が空では登録できない' do
        @test.item2 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item2 can't be blank")
      end
      it 'item3が空では登録できない' do
        @test.item3 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item3 can't be blank")
      end
      it 'item4が空では登録できない' do
        @test.item4 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item4 can't be blank")
      end
      it 'item5が空では登録できない' do
        @test.item5 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item5 can't be blank")
      end
      it 'item6が空では登録できない' do
        @test.item6 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item6 can't be blank")
      end
      it 'item7が空では登録できない' do
        @test.item7 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item7 can't be blank")
      end
      it 'item8が空では登録できない' do
        @test.item8 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item8 can't be blank")
      end
      it 'item9が空では登録できない' do
        @test.item9 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item9 can't be blank")
      end
      it 'item10が空では登録できない' do
        @test.item10 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item10 can't be blank")
      end
      it 'item11が空では登録できない' do
        @test.item11 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item11 can't be blank")
      end
      it 'item12が空では登録できない' do
        @test.item12 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item12 can't be blank")
      end
      it 'item13が空では登録できない' do
        @test.item13 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item13 can't be blank")
      end
      it 'item14が空では登録できない' do
        @test.item14 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item14 can't be blank")
      end
      it 'item15が空では登録できない' do
        @test.item15 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item15 can't be blank")
      end
      it 'item16が空では登録できない' do
        @test.item16 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item16 can't be blank")
      end
      it 'item17が空では登録できない' do
        @test.item17 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item17 can't be blank")
      end
      it 'item18が空では登録できない' do
        @test.item18 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item18 can't be blank")
      end
      it 'item19が空では登録できない' do
        @test.item19 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item19 can't be blank")
      end
      it 'item20が空では登録できない' do
        @test.item20 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item20 can't be blank")
      end
      it 'item21が空では登録できない' do
        @test.item21 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item21 can't be blank")
      end
      it 'item22が空では登録できない' do
        @test.item22 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item22 can't be blank")
      end
      it 'item23が空では登録できない' do
        @test.item23 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item23 can't be blank")
      end
      it 'item24が空では登録できない' do
        @test.item24 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item24 can't be blank")
      end
      it 'item25が空では登録できない' do
        @test.item25 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item25 can't be blank")
      end
      it 'item26が空では登録できない' do
        @test.item26 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item26 can't be blank")
      end
      it 'item27が空では登録できない' do
        @test.item27 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item27 can't be blank")
      end
      it 'item28が空では登録できない' do
        @test.item28 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item28 can't be blank")
      end
      it 'item29が空では登録できない' do
        @test.item29 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item29 can't be blank")
      end
      it 'item30が空では登録できない' do
        @test.item30 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item30 can't be blank")
      end
      it 'item31が空では登録できない' do
        @test.item31 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item31 can't be blank")
      end
      it 'item32が空では登録できない' do
        @test.item32 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item32 can't be blank")
      end
      it 'item33が空では登録できない' do
        @test.item33 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item33 can't be blank")
      end
      it 'item34が空では登録できない' do
        @test.item34 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item34 can't be blank")
      end
      it 'item35が空では登録できない' do
        @test.item35 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item35 can't be blank")
      end
      it 'item36が空では登録できない' do
        @test.item36 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item36 can't be blank")
      end
      it 'item37が空では登録できない' do
        @test.item37 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item37 can't be blank")
      end
      it 'item38が空では登録できない' do
        @test.item38 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item38 can't be blank")
      end
      it 'item39が空では登録できない' do
        @test.item39 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item39 can't be blank")
      end
      it 'item40が空では登録できない' do
        @test.item40 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item40 can't be blank")
      end
      it 'item41が空では登録できない' do
        @test.item41 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item41 can't be blank")
      end
      it 'item42が空では登録できない' do
        @test.item42 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item42 can't be blank")
      end
      it 'item43が空では登録できない' do
        @test.item43 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item43 can't be blank")
      end
      it 'item44が空では登録できない' do
        @test.item44 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item44 can't be blank")
      end
      it 'item45が空では登録できない' do
        @test.item45 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item45 can't be blank")
      end
      it 'item46が空では登録できない' do
        @test.item46 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item46 can't be blank")
      end
      it 'item47が空では登録できない' do
        @test.item47 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item47 can't be blank")
      end
      it 'item48が空では登録できない' do
        @test.item48 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item48 can't be blank")
      end
      it 'item49が空では登録できない' do
        @test.item49 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item49 can't be blank")
      end
      it 'item50が空では登録できない' do
        @test.item50 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item50 can't be blank")
      end
      it 'item51が空では登録できない' do
        @test.item51 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item51 can't be blank")
      end
      it 'item52が空では登録できない' do
        @test.item52 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item52 can't be blank")
      end
      it 'item53が空では登録できない' do
        @test.item53 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item53 can't be blank")
      end
      it 'item54が空では登録できない' do
        @test.item54 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item54 can't be blank")
      end
      it 'item55が空では登録できない' do
        @test.item55 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item55 can't be blank")
      end
      it 'item56が空では登録できない' do
        @test.item56 = ''
        @test.valid?
        expect(@test.errors.full_messages).to include("Item56 can't be blank")
      end
    end
  end
end
