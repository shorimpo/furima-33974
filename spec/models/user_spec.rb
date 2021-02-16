require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

<<<<<<< Updated upstream
  describe "ユーザー新規登録" do
    context "新規登録がうまくいくとき" do
      it "nickname、email、password、password_confirmation、last_name、first_name、last_name_kana、first_name_kana、uesr_birth_date_1i存在すれば登録できる" do
        expect(@user).to be_valid
      end

      it "passwordが6文字以上あれば登録できる" do
        @user.password = "abc123"
        @user.password_confirmation = "abc123"
        expect(@user).to be_valid
      end


    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ""
=======
  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it '新規登録に必要な情報が全て記入されていれば登録できる' do
        expect(@user).to be_valid
      end

      it 'passwordが6文字以上あれば登録できる' do
        @user.password = 'abc123'
        @user.password_confirmation = 'abc123'
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nicknameが空だと登録できない' do
        @user.nickname = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

<<<<<<< Updated upstream
      it "emailが空だと登録できない" do
        @user.email = ""
=======
      it 'emailが空だと登録できない' do
        @user.email = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

<<<<<<< Updated upstream
      it "passwordが空だと登録できない" do
        @user.password = ""
=======
      it 'passwordが空だと登録できない' do
        @user.password = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

<<<<<<< Updated upstream
      it "last_nameが空だと登録できない" do
        @user.last_name = ""
=======
      it 'last_nameが空だと登録できない' do
        @user.last_name = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end

<<<<<<< Updated upstream
      it "first_nameが空だと登録できない" do
        @user.first_name = ""
=======
      it 'first_nameが空だと登録できない' do
        @user.first_name = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end

<<<<<<< Updated upstream
      it "last_name_kanaが空だと登録できない" do
        @user.last_name_kana = ""
=======
      it 'last_name_kanaが空だと登録できない' do
        @user.last_name_kana = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank")
      end

<<<<<<< Updated upstream
      it "first_name_kanaが空だと登録できない" do
        @user.first_name_kana = ""
=======
      it 'first_name_kanaが空だと登録できない' do
        @user.first_name_kana = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank")
      end

<<<<<<< Updated upstream
      it "user_birth_date_1iが空だと登録できない" do
        @user.user_birth_data_1i = ""
=======
      it 'user_birth_date_1iが空だと登録できない' do
        @user.user_birth_data_1i = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("User birth data 1i can't be blank")
      end

<<<<<<< Updated upstream

      it "重複したemailが存在する場合登録できない" do
=======
      it '重複したemailが存在する場合登録できない' do
>>>>>>> Stashed changes
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
<<<<<<< Updated upstream
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      it "passwordが5文字以下であれば登録できない" do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end

      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
=======
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'passwordが5文字以下であれば登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
>>>>>>> Stashed changes
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

<<<<<<< Updated upstream
      it "last_name_kanaが全角カタカナでないと登録できない" do
        @user.last_name_kana = "kana"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana is invalid")
      end

      it "first_name_kanaが全角カタカナでないと登録できない" do
        @user.first_name_kana = "kana"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana is invalid")
      end

      it "passwordが半角英数混合でないと登録できない" do
        @user.password = "000000"
        @user.password_confirmation = "000000"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password Include both letters and numbers")
      end


    end
  end
end
=======
      it 'last_name_kanaが全角カタカナでないと登録できない' do
        @user.last_name_kana = 'kana'
        @user.valid?
        expect(@user.errors.full_messages).to include('Last name kana is invalid')
      end

      it 'first_name_kanaが全角カタカナでないと登録できない' do
        @user.first_name_kana = 'kana'
        @user.valid?
        expect(@user.errors.full_messages).to include('First name kana is invalid')
      end

      it 'passwordが半角英数混合でないと登録できない' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password Include both letters and numbers')
      end
    end
  end
end
>>>>>>> Stashed changes
