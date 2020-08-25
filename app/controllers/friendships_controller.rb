class FriendshipsController < ApplicationController
  def destroy

    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "Friends successfully remove"
    redirect_to my_friends_path
  end
end
