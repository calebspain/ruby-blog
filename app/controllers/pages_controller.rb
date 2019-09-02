class PagesController < ApplicationController
  layout "admin"
  def home
    render template: "pages/home"
  end

  def parComments
    # render html: "Name: #{params[:name]}, Article: #{params[:id]}, Comment ID: #{params[:commentsId]}"
    render html: params
  end

  def contact
    title = "This is my contact page"
    render html: title
  end

  def gallery
    @numbers = [1,2,3,4,5,6]
    @users = ["Joe", "Jane", "Jonny"]
    @currentUser = @users[0]
    @allAges = 24
    render template: "pages/portfolio"
  end

  def allUsers
    @numbers = [1,2,3,4,5,6]
    @users = ["Joe", "Jane", "Jonny"]
    @currentUser = @users[0]
    @allAges = 24
    @allUsers = [
      {
        :name => "Joe",
        :age => 30,
        :location => "CT"
      },
      {
        :name => "Johnny",
        :age => 25,
        :location => "FL"
      }
    ]
    # render xml: @allUsers
    respond_to do |format|
      format.html { render template: "pages/portfolio" }
      format.xml { render xml: @allUsers }
      format.json { render json: @allUsers }
    end
  end
end
