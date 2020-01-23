class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end
  def new
    @article = Article.new
  end
  def edit
    @article = Article.find(params[:id])
    # render plain:params{@article}
  end
  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Article Successfully Created"
      redirect_to article_path(@article)
    else
      render 'new'

    end
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article Update Successfully"
      redirect_to article_path(@article)
    else
      render 'edit'

    end

  end
  def show
    @article = Article.find(params[:id])

  end
  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:danger] = "Article delete Successfully"
      redirect_to articles_path
    else
      render 'index'
    end
  end
  private
  def article_params
    params.require(:article).permit(:title, :description)
  end



end
