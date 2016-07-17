class Admin::TechstatsController < ApplicationController
  before_action :set_played, only: [:index, :create]

  def index
    @techstats = @played.techstats
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        if not @played.teched
          @played.home_team.users.each do |user|
            Techstat.create(played_id: @played.id, user_id: user.id)
          end
          @played.guest_team.users.each do |user|
            Techstat.create(played_id: @played.id, user_id: user.id)
          end
          @played.update_attributes(teched: true)
        end
      end
      redirect_to admin_game_played_techstats_path(@played.game, @played)
    rescue Exception => e
      redirect_to admin_game_played_path(@played.game, @played)
    end
  end

  private

  def set_played
    @played = Played.find(params[:played_id])
  end
end
