class RegsController < ApplicationController

  def new
      @reg = Reg.new
      @contests = Contest.all
      @games = Game.all
  end

  def create
     @reg = current_user.regs.build(reg_params)

     if @reg.save
      redirect_to reg_path(@reg)
     else
      redirect_to games_path
     end
  end

  private

  def reg_params
     params.require(:reg).permit(:datetime_registered, :contest_id, :game_id)
  end

end
