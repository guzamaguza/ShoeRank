class QuestionsController < ApplicationController

  def show
    @reg = Reg.find_by(id: params[:reg_id])
    @contest = @reg.contest
    @game = @reg.game
    @questions = @reg.game.questions.all
    @players_rem = @game.regs.all.collect{|u| u.w_or_l != "L"}.count  #check this later
  end

  def index
    @reg = Reg.find_by(id: params[:reg_id])
    @contest = @reg.contest
    @game = @reg.game
    @questions = @reg.game.questions.all
    @players_rem = @game.regs.all.collect{|u| u.w_or_l != "L"}.count  #check this later
  end

end
