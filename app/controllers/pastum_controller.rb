class PastumController < ApplicationController
  def index
    @all_pasta = Pastum.all
  end
end
