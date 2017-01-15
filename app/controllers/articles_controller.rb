class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, notice: '保存しました'
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @html = markdown.render(@article.text)
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

    def article_params
      params.require(:article).permit(:title, :text)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
