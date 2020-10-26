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

  def update
    #@race = Race.find_by(id: params[:id])
    @reg = Reg.find_by(id: params[:reg_id])
    if @reg.game.question.update(question_params)

      if @reg.game.question.answer == @@Phillies_Braves[:q1_ans]

      redirect_to question_path(@race)

    else
      render :show
    end
  end


end
