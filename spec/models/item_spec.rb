require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '出品がうまくいくとき' do
      it '商品出品に必要な情報が全て記入されていれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '出品が上手くいかないとき' do
      it 'nameが空だと登録できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'infoが空だと登録できない' do
        @item.info = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Info can't be blank")
      end

      it 'category_idが空だと登録できない' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Category Select')
      end

      it 'sales_status_idが空だと登録できない' do
        @item.sales_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Sales status Select')
      end

      it 'shippinf_fee_status_idが空だと登録できない' do
        @item.shipping_fee_status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Shipping fee status Select')
      end

      it 'prefecture_idが空だと登録できない' do
        @item.prefecture_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Prefecture Select')
      end

      it 'priceが空だと登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank", 'Price Out of setting range')
      end

      it 'scheduled_delivery_idが空だと登録できない' do
        @item.scheduled_delivery_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Scheduled delivery Select')
      end

      it 'imageが空だと登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'priceが¥300~¥9,999,999の間でないと登録できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price Out of setting range')
      end

      it 'priceが半角数字でないと登録できない' do
        @item.price = '１２３'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price Out of setting range')
      end

      it 'category_idが1だと登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Category Select')
      end

      it 'sales_status_idが1だと登録できない' do
        @item.sales_status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Sales status Select')
      end

      it 'shipping_fee_status_idが1だと登録できない' do
        @item.shipping_fee_status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Shipping fee status Select')
      end

      it 'prefecture_idが1だと登録できない' do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Prefecture Select')
      end

      it 'scheduled_delivery_idが1だと登録できない' do
        @item.scheduled_delivery_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Scheduled delivery Select')
      end

      it 'priceが¥10,000,000以上だと登録できない' do
        @item.price = 10_000_000
        @item.valid?
        expect(@item.errors.full_messages).to include('Price Out of setting range')
      end

      it 'priceが半角英数混合では登録できない' do
        @item.price = 'aaa123'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price Half-width number', 'Price Out of setting range')
      end

      it 'priceが半角英語だけでは登録できない' do
        @item.price = 'abc'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price Half-width number', 'Price Out of setting range')
      end
    end
  end
end
