class DadosController < ApplicationController

  def roll
    @num = params[:num]
    @dado = []
    for i in 0..@num do
      @dado.append(rand(1..6))
    end
    @num_vezes = [0 0 0 0 0 0]
    for i in 0..@num do
      case @dado[i]
      when 1
        @num_vezes[0] = @num_vezes[0] + 1
      end
      when 2
        @num_vezes[1] = @num_vezes[1] + 1
      end
      when 3
        @num_vezes[2] = @num_vezes[2] + 1
      end
      when 4
        @num_vezes[3] = @num_vezes[3] + 1
      end
      when 5
        @num_vezes[4] = @num_vezes[4] + 1
      end
      when 6
        @num_vezes[5] = @num_vezes[5] + 1
      end
    end
  end

  private
  
  def dados_params
    # talvez :dado e :num_vezes nao seja necessario
    params.require(:dado).permit(:num, :dado, :num_vezes)
  end

end
