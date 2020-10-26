class QuestionsController < ApplicationController

  def show
    @reg = Reg.find_by(id: params[:reg_id])
    @game = @reg.game
    @questions = @reg.game.questions.all
    @players_rem = @game.regs.all.collect{|u| u.w_or_l != "L"}.count  #check this later
  end

  def index
    @reg = Reg.find_by(id: params[:reg_id])
    @game = @reg.game
    @questions = @reg.game.questions.all
    @players_rem = @game.regs.all.collect{|u| u.w_or_l != "L"}.count  #check this later
  end

  def update
    @question = Question.find_by(id: params[:id])
    #if submitted on time then update the database, if not then redirect to lost page
    if @question.datetime_submitted < @question.datetime_required
      if @question.update(question_params)
        redirect_to question_path
      else
        render :show
      end
    else
      @question.result = "l"
      @question.game.reg.w_or_l = "l"
      render "lostpage"
    end
  end


end
