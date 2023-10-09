class PagesController < ApplicationController
  def home
    @team = ["Ana", "John", "Kate", "Daniel"]
  end

  def about
  end

  def contact
    @members = ["Ana", "John", "Kate", "Daniel"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end

  end

end
