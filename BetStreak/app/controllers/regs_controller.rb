class RegsController < ApplicationController

  def index
    @regs = current_user.regs
  end

  def new
    @reg = Reg.new
    @contests = Contest.all
    @games = Game.all
  end

  def create
     @reg = current_user.regs.build(reg_params)

     if @reg.datetime_registered < @reg.game.datetime_of_start
        @reg.approved = "Yes"
     else
        @reg.approved = "No"
     end

     if @reg.save
      #@game = @reg.game
      redirect_to reg_path(@reg)
     else
      redirect_to games_path
     end
  end

  def show
    @reg = Reg.find_by(id: params[:id])
  end

  private

  def reg_params
     params.require(:reg).permit(:datetime_registered, :contest_id, :game_id, :user_id)
  end

end
