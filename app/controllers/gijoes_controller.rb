class GijoesController < ApplicationController
  def index
    @joes = Gijoe.all
  end

  def create
    @joe = Gijoe.new( Gijoe.safe_params(params))
    @joe.save
    redirect_to @joe
  end

  def show
    @joe = Gijoe.find params[:id]
  end

  require 'open-uri'
  def show_yojoe
    joe = Gijoe.find params[:id]
    file = open joe.yojoe_url
    contents = file.read
    contents.sub! 'if(top!=self){top.location.replace(self.location.href);}', ''
    contents.gsub! "href='/", "href='http://www.yojoe.com/"
    contents.gsub! "href=\"/", "href=\"http://www.yojoe.com/"
    contents.gsub! "src=\"/", "href=\"http://www.yojoe.com/"
    render :text => contents
  end

  def edit
  end
  
  def respond_with_204
    render :nothing=>true, :status=> 204
  end
end
