require 'rails_helper'

RSpec.describe PurchaseRecordForm, type: :model do
  describe '商品購入機能' do
    before do
      user = FactoryBot.create(:user)
      item = FactoryBot.create(:item)
      @purchase_record_form = FactoryBot.build(:purchase_record_form, user_id: user.id, item_id: item.id)
      sleep 0.1
    end

    context '出品がうまくいくとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@purchase_record_form).to be_valid
      end

      it '建物名が空でも購入できる' do
        @purchase_record_form.building = ''
        expect(@purchase_record_form).to be_valid
      end
    end

    context '出品が上手くいかないとき' do
      it '郵便番号が空だと登録できない' do
        @purchase_record_form.postal_code = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Postal code can't be blank",
                                                                      'Postal code is invalid. Include hyphen(-)')
      end

      it '都道府県が空だと登録できない' do
        @purchase_record_form.prefecture_id = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Prefecture can't be blank", 'Prefecture Select')
      end

      it '市区町村が空だと登録できない' do
        @purchase_record_form.city = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("City can't be blank")
      end

      it '番地が空だと登録できない' do
        @purchase_record_form.addresses = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Addresses can't be blank")
      end

      it '電話番号が空だと登録できない' do
        @purchase_record_form.phone_number = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Phone number can't be blank")
      end

      it '郵便番号の保存にはハイフンが必要である' do
        @purchase_record_form.postal_code = '1234567'
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include('Postal code is invalid. Include hyphen(-)')
      end

      it '電話番号は11桁以内の数値のみ保存可能である' do
        @purchase_record_form.phone_number = '111111111111'
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include('Phone number is invalid')
      end

      it '電話番号は数値のみ保存可能である' do
        @purchase_record_form.phone_number = 'aaaaaaaaaaa'
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include('Phone number is invalid', 'Phone number Input only number')
      end

      it 'tokenが空では登録できないこと' do
        @purchase_record_form.token = nil
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Token can't be blank")
      end

      it 'prefecture_idが1だと登録できない' do
        @purchase_record_form.prefecture_id = 1
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include('Prefecture Select')
      end

      it 'user_idが空だと登録できない' do
        @purchase_record_form.user_id = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("User can't be blank")
      end

      it 'item_idが空だと登録できない' do
        @purchase_record_form.item_id = ''
        @purchase_record_form.valid?
        expect(@purchase_record_form.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end
