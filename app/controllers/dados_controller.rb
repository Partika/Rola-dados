class DadosController < ApplicationController

  def roll
    @num = params[:num]
    @dado = []
    for i in 0..@num do
      @dado.append(rand(1..6))
    end
    @numcu = [0 0 0 0 0 0]
    for i in 0..@num do
      case @dado[i]
      when 1
        @numcu[0] = @numcu[0] + 1
      end
      when 2
        @numcu[1] = @numcu[1] + 1
      end
      when 3
        @numcu[2] = @numcu[2] + 1
      end
      when 4
        @numcu[3] = @numcu[3] + 1
      end
      when 5
        @numcu[4] = @numcu[4] + 1
      end
      when 6
        @numcu[5] = @numcu[5] + 1
      end
    end
  end

  private
  
  def dados_params
    params.require(:dado).permit(:num)
  end

end
