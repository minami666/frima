class MypagesController < ApplicationController

  before_action :set_action

  # マイページ／一覧
  def index
    @categories = Category.all
    @products = Product.where(user_id: current_user.id)
  end

  # 本人確認
  def identfication
    @categories = Category.all
  end

  # SNS認証ページ(APIでfacebookやtwitterアカウントでのログインを行う)
  def sns

  end

  # お知らせ
  def notification

  end

  # やることリスト
  def todo

  end

  # 出品した商品 - 出品中
  def listing
    @products = Product.all
  end

  # 出品した商品 - 取引中
  def progress

  end

  # 出品した商品 - 売却済み
  def completed

  end

  # 購入した商品 - 取引中
  def buying

  end

  # 購入した商品 - 過去の取引
  def pastransaction

  end

  # ニュース一覧
  def news

  end

  # 評価一覧
  def evaluates

  end

  # お問い合わせ
  def support

  end

  # ポイント
  def points

  end

  # プロフィール
  def profile
  end

  # 電話番号の確認
  def confirmation

  end

  # ログアウト
  def destroy
  end


  # ログイン画面ボタンいっぱい
  def loginbutton
  end

  #
  def tell
  end

  # 新規登録の完了画面
  def done
  end

  def  update
    if current_user.update(user_params)
      redirect_to mypages_profile_path
    else
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname,:profile)
  end

    def set_action
      @productsimage = Productsimage.all
      @categories = Category.all
      @brands = Brand.all
    end

end
