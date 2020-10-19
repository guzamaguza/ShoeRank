class QuestionsController < ApplicationController

  def show
    @reg = Reg.find_by(id: params[:reg_id])
    @contest = @reg.contest
    @game = @reg.game
    @questions = @reg.game.questions.all
  end

  def index
    @reg = Reg.find_by(id: params[:reg_id])
    @contest = @reg.contest
    @game = @reg.game
    @questions = @reg.game.questions.all
  end

end
