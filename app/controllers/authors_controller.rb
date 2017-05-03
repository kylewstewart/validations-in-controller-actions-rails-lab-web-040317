class AuthorsController < ApplicationController

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  # def update
  #   @author = Author.find[params[:id]]
  #
  #   if @author.update(author_params)
  #     @author.save
  #     redirect_to(author_path(@author))
  #   else
  #     render :new
  #   end
  # end

  def show
    @author = Author.find(params[:id])
  end


  private

  def author_params
    params.permit(:email, :name)
  end
end
