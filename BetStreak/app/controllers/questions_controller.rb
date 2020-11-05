class QuestionsController < ApplicationController

  def start_page
    @reg = Reg.find_by(id: params[:reg_id])
    render :start_page
  end

  def show
    @question = Question.find_by(id: params[:id])
    @reg = Reg.find_by(id: params[:reg_id])
    #@question = Question.find_by(id: params[:question])

    @game = @reg.game
    @questions = @reg.game.questions.all
    @players_rem = @game.regs.all.collect{|u| u.w_or_l != "L"}.count  #check this later
  end

  def index
    @game = Game.find_by(id: params[:game_id])
    #@reg = @game.reg
    @questions = @game.questions.all
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

  def create
    @question = Question.find_by(:id => params[:question][:id])
    #@question = @reg.game.question.build(question_params)
     if @question.present?
       #@question.update
       redirect_to patch_question_path
     else
       render :index
     end
  end

  private

  def question_params
    params.require(:question).permit(:answer, :game_id)
  end

end
