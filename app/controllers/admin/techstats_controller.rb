class Admin::TechstatsController < ApplicationController
  before_action :set_played, only: [:index, :create]

  def index

  end

  def create
    begin
      ActiveRecord::Base.transaction do
        @played.home_team.users.each do |user|
          Techstat.create(played_id: @played.id, user_id: user.id)
        end
        @played.guest_team.users.each do |user|
          Techstat.create(played_id: @played.id, user_id: user.id)
        end
      end
      redirect_to admin_game_played_techstats(@played.game, @played)
    rescue Exception => e
      redirect_to admin_game_played(@played.game, @played)
    end
  end

  private

  def set_played
    @played = Played.find(params[:played_id])
  end
end
