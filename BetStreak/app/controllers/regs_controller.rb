class RegsController < ApplicationController

  def new
    @reg = Reg.new
  end

  def create
     @reg = current_user.regs.build(reg_params)
     if @reg.save
      redirect_to reg_path(@reg)
     else
      render :new
     end
  end

  private

  def reg_params
     params.require(:reg).permit()
  end

end
