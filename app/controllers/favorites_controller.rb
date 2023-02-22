class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(picture_id: params[:picture_id])
    redirect_to favorites_path, notice: "#{favorite.picture.user.name}さんの投稿をお気に入りに追加しました"
  end
 
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to favorites_path, notice: "#{favorite.picture.user.name}さんの投稿を解除しました"
  end
end
